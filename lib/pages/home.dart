import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:vfxplainer/widgets/paragraph.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final question =
      "¿Alguna vez te has preguntado cómo se crean los mundos imposibles del cine?";
  final paragraph =
      "Aprende cómo el cine convierte la ficción en realidad con efectos visuales.";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Consts.pagePadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Consts.appName,
            style: TextStyle(
              color: Consts.appColor,
              fontSize: 64,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 48),
          Paragraph(
            text: question,
            alpha: ParagraphAlpha.full,
            overrideStyle: const TextStyle(
                color: Color.fromARGB(255, 211, 199, 253),
                fontSize: 32,
                height: 1.4,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          const Expanded(child: SizedBox()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _StartButton(),
              const SizedBox(height: 24),
              Paragraph(
                text: paragraph,
                size: ParagraphSize.md,
                alignment: TextAlign.center,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _StartButton extends StatelessWidget {
  const _StartButton();

  final double svgSize = 40;

  void _handleTap() {}

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _handleTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(15),
          border: Border.all(color: Colors.white.withAlpha(38)),
          borderRadius: const BorderRadius.all(Radius.circular(999)),
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 20,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/svgs/sparkles.svg",
                width: svgSize,
                height: svgSize,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              const SizedBox(width: 16),
              const Text(
                "Empezar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
