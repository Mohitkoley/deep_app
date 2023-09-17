import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/routes/subRoutes/sub_app_routes.dart';

import 'package:deepapp/screens/drawer/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ABoutScreen extends StatefulWidget {
  const ABoutScreen({super.key});

  @override
  State<ABoutScreen> createState() => _ABoutScreenState();
}

class _ABoutScreenState extends State<ABoutScreen> {
  // @override
  // Widget build(BuildContext context) {
  //   return AutoTabsRouter.tabBar(
  //       routes: [
  //         AddressRoute(),
  //         ProfessionRoute(),
  //       ],
  //       builder: (context, child, controller) {
  //         final tabsRouter = AutoTabsRouter.of(context);
  //         return Scaffold(
  //           appBar: AppBar(title: Text(context.topRoute.path)),
  //           drawer: MyDrawerScreen(),
  //           body: Container(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [],
  //             ),
  //           ),
  //           bottomNavigationBar: BottomNavigationBar(
  //               currentIndex: tabsRouter.activeIndex,
  //               onTap: tabsRouter.setActiveIndex,
  //               items: [
  //                 BottomNavigationBarItem(
  //                     icon: Icon(Icons.home), label: "Address"),
  //                 BottomNavigationBarItem(
  //                     icon: Icon(Icons.business), label: "Profession"),
  //               ]),
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: [
        ProfessionRoute(),
        AddressRoute(),
      ],
      animatePageTransition: true,
      physics: NeverScrollableScrollPhysics(),
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(title: Text(context.topRoute.path)),
          drawer: MyDrawerScreen(),
          body: AutoPageView(
            animatePageTransition: true,
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            router: tabsRouter,
          ),
        );
      },
    );
  }
}
