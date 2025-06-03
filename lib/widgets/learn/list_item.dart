import 'package:flutter/material.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:vfxplainer/widgets/paragraph.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Consts.horizontalPadding),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_rounded,
            color: Colors.white,
            size: 20,
          ),
          Flexible(
            child: Paragraph(
              text: text,
            ),
          ),
        ],
      ),
    );
  }
}
