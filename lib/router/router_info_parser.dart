import 'package:flutter/material.dart';

import 'routes_config.dart';
import '../constants.dart';

class ShopListRouterInformationParser
    extends RouteInformationParser<ShopListRouteConfig> {
  @override
  Future<ShopListRouteConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    // Handle '/'
    if (uri.pathSegments.isEmpty) {
      return ShopListRouteConfig.list();
    }

    // Handle '/items/:itemId'
    // Handle '/route/:itemId'
    if (uri.pathSegments.length == 2) {
      var secondSegment = uri.pathSegments[1];
      var id = int.tryParse(secondSegment);

      if (id == null) return ShopListRouteConfig.error();

      if (uri.pathSegments[0] != 'items') {

          return ShopListRouteConfig.nestedItemRoute(uri.pathSegments[0], 'item $id', id);
      }

      // return example items 0
      return ShopListRouteConfig.details(
          'item $id', id);
    }

    // Handle '/route'
    if (uri.pathSegments.length == 1) {
      if (!routes.contains(uri.pathSegments[0])) {
        return ShopListRouteConfig.error();
      }
      return ShopListRouteConfig.newRoute(uri.pathSegments[0]);
    }


    // Handle /404
    return ShopListRouteConfig.error();
  }

  @override
  RouteInformation? restoreRouteInformation(ShopListRouteConfig configuration) {
    if (configuration.show404) {
      return const RouteInformation(location: '/404');
    }
    if (configuration.isListPage) {
      return const RouteInformation(location: '/');
    }
    if (configuration.isNewPage) {
      return RouteInformation(location: '/${configuration.selectedRoute!}');
    }

    if (configuration.isNestedPage) {
      return RouteInformation(
          location: '/${configuration.selectedRoute!}/${configuration.id}');
    }
    if (configuration.isDetailsPage) {
      return RouteInformation(location: '/items/${configuration.id}');
    }
    return null;
  }
}
