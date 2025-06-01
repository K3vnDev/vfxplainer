import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGButton extends StatelessWidget {
  const SVGButton({
    super.key,
    required this.label,
    required this.svgName,
    this.onPressed,
  });

  final String svgName;
  String get svgPath => "assets/svgs/$svgName.svg";

  final String label;
  final VoidCallback? onPressed;

  void _handleTap() async {
    onPressed?.call();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(15),
          border: Border.all(color: Colors.white.withAlpha(38)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                svgPath,
                width: 28,
                height: 28,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              const SizedBox(width: 12),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
