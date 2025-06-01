import 'package:flutter/material.dart';

class FancyBackground extends StatelessWidget {
  const FancyBackground({
    super.key,
    required this.backgroundColor,
    required this.circle1,
    required this.circle2,
  });

  final Color backgroundColor;
  final RadialGradient circle1;
  final RadialGradient circle2;

  final double size = 850;
  final double vPadding = -250;
  final double hPadding = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: backgroundColor),
        Positioned(
          top: vPadding,
          left: hPadding,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              gradient: circle1,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: vPadding,
          right: hPadding,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              gradient: circle2,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
