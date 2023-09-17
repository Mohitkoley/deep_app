import 'package:auto_route/auto_route.dart';
import 'package:deepapp/routes/app_router.dart';
import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/routes/subRoutes/sub_route_names.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final router = AutoRouter.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  tabsRouter.setActiveIndex(0);
                },
                child: Text("Address Screen")),
            ElevatedButton(
                onPressed: () {
                  // AutoRouter.of(context).push(ContactRoute());
                  final router = AutoRouter.of(context).root;
                  router.push(ContactRoute());
                },
                child: Text("Contact Screen")),
          ],
        ),
      ),
    );
  }
}
