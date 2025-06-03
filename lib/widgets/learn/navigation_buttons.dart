import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    super.key,
    required this.onNavigate,
    required this.currentIndex,
  });

  final Function(BuildContext, int) onNavigate;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (currentIndex > 0) ...[
              _NavButton(
                icon: Icons.arrow_back_rounded,
                label: null,
                onPressed: () => onNavigate(context, -1),
              ),
              const SizedBox(width: 16),
            ],
            _NavButton(
              icon: Icons.arrow_forward_rounded,
              label: "Siguiente",
              onPressed: () => onNavigate(context, 1),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String? label; // null = icon only
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white.withAlpha(25),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: BorderSide(
          color: Colors.white.withAlpha(40),
          width: 1,
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
      label: label == null
          ? const SizedBox.shrink()
          : Text(
              label!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
    );
  }
}
