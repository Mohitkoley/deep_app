import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/routes/subRoutes/sub_route_names.dart';
import 'package:deepapp/screens/not_found.dart';
import 'package:deepapp/screens/subScreens/address_screen.dart';
import 'package:deepapp/screens/subScreens/profession_screen.dart';

part 'sub_app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class SubAppRouter extends _$SubAppRouter {
  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
        AutoRoute(
            page: AddressRoute.page,
            path: SubRouteNames.address,
            initial: true),
        AutoRoute(page: NotFoundRoute.page, path: '*'),
        AutoRoute(page: ProfessionRoute.page, path: SubRouteNames.profession),
      ];
}
