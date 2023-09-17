import 'package:deepapp/routes/route_export.dart';
import 'package:deepapp/utils/extensions.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfessionScreen extends StatefulWidget {
  const ProfessionScreen({super.key});

  @override
  State<ProfessionScreen> createState() => _ProfessionScreenState();
}

class _ProfessionScreenState extends State<ProfessionScreen> {
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            tabsRouter.setActiveIndex(1);
          },
          child: Text("Proffesion screen")),
    ));
  }
}
