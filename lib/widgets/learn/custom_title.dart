import 'package:flutter/material.dart';
import 'package:vfxplainer/utils/consts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Consts.horizontalPadding,
        right: Consts.horizontalPadding,
        bottom: 6,
        top: 12,
      ),
      child: Row(
        spacing: 10,
        children: [
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Consts.appColor,
            size: 40,
          ),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.1,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
