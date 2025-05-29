import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vfxplainer/layout.dart';
import 'package:vfxplainer/pages/home.dart';
import 'package:vfxplainer/utils/consts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter router = GoRouter(routes: [
    ShellRoute(
      builder: (context, state, child) => Layout(child: child),
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const HomePage(),
        ),
      ],
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Consts.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
