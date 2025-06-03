import 'package:flutter/material.dart';
import 'package:vfxplainer/widgets/fancy_background.dart';
import 'package:vfxplainer/widgets/nav_bar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child});

  final Widget child;

  final LinearGradient bgGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0A0A0A),
      Color(0xFF1A1A1A),
    ],
  );

  @override
  Widget build(BuildContext context) {
    const double radius = 0.6;

    return Scaffold(
      bottomNavigationBar: const NavBar(),
      body: Stack(
        children: [
          FancyBackground(
            backgroundColor: const Color(0xFF0A0A0A),
            circle1: RadialGradient(
              colors: [
                const Color.fromARGB(255, 135, 51, 214).withAlpha(75),
                Colors.transparent,
              ],
              radius: radius,
            ),
            circle2: RadialGradient(
              colors: [
                const Color.fromARGB(255, 63, 124, 255).withAlpha(55),
                Colors.transparent,
              ],
              radius: radius,
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
