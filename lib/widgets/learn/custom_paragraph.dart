import 'package:flutter/material.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:vfxplainer/widgets/paragraph.dart';

class CustomParagraph extends StatelessWidget {
  const CustomParagraph({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Consts.horizontalPadding),
      child: Paragraph(
        text: text,
      ),
    );
  }
}
