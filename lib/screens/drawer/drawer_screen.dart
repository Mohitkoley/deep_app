import 'package:deepapp/extensions.dart';
import 'package:deepapp/routes/app_router.dart';
import 'package:deepapp/routes/route_export.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyDrawerScreen extends StatelessWidget {
  const MyDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: context.w * 0.7,
      child: ListView(children: [
        DrawerButton(
          onPressed: () {
            if (!ModalRoute.of(context)!.isFirst) {
              context.router.pushAndPopUntil(ContactRoute(),
                  predicate: (route) {
                return route.settings.name == HomeRoute.name;
              });
            }
          },
        )
      ]),
    );
  }
}
