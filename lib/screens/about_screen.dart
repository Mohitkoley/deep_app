import 'package:deepapp/routes/app_router.dart';
import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/routes/route_names.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("About")),
        drawer: MyDrawerScreen(),
        body: Container(
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              context.router.pushAndPopUntil(ContactRoute(),
                  predicate: ((route) => route.isFirst));
              // CustomRoute(
              //     page: ContactRoute.page,
              //     transitionsBuilder: TransitionsBuilders.slideTop,
              //     durationInMilliseconds: 500);
            },
            child: Text("About"),
          )),
        ));
  }
}
