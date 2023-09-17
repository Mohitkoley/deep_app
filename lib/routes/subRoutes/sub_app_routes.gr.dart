// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'sub_app_routes.dart';

abstract class _$SubAppRouter extends RootStackRouter {
  // ignore: unused_element
  _$SubAppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddressScreen(),
      );
    },
    NotFoundRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotFoundScreen(),
      );
    },
    ProfessionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfessionScreen(),
      );
    },
  };
}

/// generated route for
/// [AddressScreen]
class AddressRoute extends PageRouteInfo<void> {
  const AddressRoute({List<PageRouteInfo>? children})
      : super(
          AddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotFoundScreen]
class NotFoundRoute extends PageRouteInfo<void> {
  const NotFoundRoute({List<PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfessionScreen]
class ProfessionRoute extends PageRouteInfo<void> {
  const ProfessionRoute({List<PageRouteInfo>? children})
      : super(
          ProfessionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfessionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
