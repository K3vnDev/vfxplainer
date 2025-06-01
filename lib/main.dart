import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vfxplainer/layout.dart';
import 'package:vfxplainer/pages/home.dart';
import 'package:vfxplainer/pages/learn.dart';
import 'package:vfxplainer/pages/quiz.dart';
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
        GoRoute(
          path: "/learn",
          builder: (context, state) => const LearnPage(),
        ),
        GoRoute(
          path: "/quiz",
          builder: (context, state) => const QuizPage(),
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
        colorScheme: ColorScheme.fromSeed(seedColor: Consts.appColor),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
