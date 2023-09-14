import 'package:deepapp/routes/route_names.dart';
import 'package:deepapp/screens/drawer/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(title: Text("Contact")),
        drawer: MyDrawerScreen(),
        body: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  context.router.replaceNamed(RouteNames.homeRoute);
                },
                child: Text("Contact")),
          ),
        ));
  }
}
