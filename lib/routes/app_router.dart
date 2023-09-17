import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/routes/subRoutes/sub_route_names.dart';

import 'package:deepapp/screens/drawer/drawer_screen.dart';
import 'package:deepapp/screens/not_found.dart';
import 'package:deepapp/screens/subScreens/address_screen.dart';
import 'package:deepapp/screens/subScreens/profession_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';
part 'custom_route_animations.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: RouteNames.homeRoute, page: HomeRoute.page, initial: true),
        AutoRoute(
            path: RouteNames.aboutRoute,
            page: ABoutRoute.page,
            maintainState: true,
            children: [
              AutoRoute(
                  path: SubRouteNames.profession,
                  page: ProfessionRoute.page,
                  title: (context, data) => "Profession",
                  initial: true),
              AutoRoute(
                path: SubRouteNames.address,
                page: AddressRoute.page,
                title: (context, data) => "Address",
              ),
            ]),
        AutoRoute(path: RouteNames.contactRoute, page: ContactRoute.page),
        AutoRoute(path: RouteNames.drawerRoute, page: MyDrawerRoute.page),
        AutoRoute(page: NotFoundRoute.page, path: '*'),
        CustomRouteAniamtion()
      ];
}
