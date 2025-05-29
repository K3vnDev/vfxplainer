import 'package:flutter/material.dart';

enum ParagraphSize { sm, md, lg }

enum ParagraphAlpha { low, mid, full }

class Paragraph extends StatelessWidget {
  const Paragraph({
    super.key,
    required this.text,
    this.size = ParagraphSize.md,
    this.alpha = ParagraphAlpha.mid,
    this.overrideStyle = const TextStyle(),
    this.alignment = TextAlign.start,
  });

  final String text;
  final TextStyle overrideStyle;

  final ParagraphSize size;
  final ParagraphAlpha alpha;
  final TextAlign alignment;

  final int alphaStep = 50;

  double get fontSize => 14 + size.index * 4;
  int get fontAlpha => (255 - alphaStep * 2) + alphaStep * alpha.index;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white.withAlpha(fontAlpha),
        fontSize: fontSize,
      ).merge(overrideStyle),
      textAlign: alignment,
    );
  }
}
