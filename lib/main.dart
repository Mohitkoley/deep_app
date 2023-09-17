import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Deep App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      routerConfig: _appRouter.config(
          includePrefixMatches: true,
          deepLinkBuilder: (deepLink) {
            if (deepLink.path.startsWith('/')) {
              return deepLink;
            } else {
              return DeepLink.defaultPath;
            }
          }),
    );
  }
}
