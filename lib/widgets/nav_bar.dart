import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 1,
          color: Colors.grey[800],
        ),
        const BottomAppBar(
          color: Color(0xff111111),
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Button(
                label: 'Inicio',
                route: '/',
                icon: Icons.home,
              ),
              _Button(
                label: 'Aprender',
                route: '/learn',
                icon: Icons.book,
              ),
              _Button(
                label: "Quiz",
                route: "/quiz",
                icon: Icons.quiz,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.label,
    required this.route,
    required this.icon,
  });

  final String label;
  final String route;
  final IconData icon;

  static const Color buttonColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.go(route),
      style: TextButton.styleFrom(
        foregroundColor: buttonColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: buttonColor,
          ),
          Text(label),
        ],
      ),
    );
  }
}
