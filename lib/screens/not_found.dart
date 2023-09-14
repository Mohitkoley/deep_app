import 'package:auto_route/auto_route.dart';
import 'package:deepapp/routes/route_names.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Not Found"),
            ElevatedButton(
                onPressed: () {
                  context.router.replaceNamed(RouteNames.homeRoute);
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
