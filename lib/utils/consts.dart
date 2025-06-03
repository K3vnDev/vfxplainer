import 'package:flutter/material.dart';
import 'package:vfxplainer/widgets/learn/custom_image.dart';
import 'package:vfxplainer/widgets/learn/custom_paragraph.dart';
import 'package:vfxplainer/widgets/learn/custom_title.dart';
import 'package:vfxplainer/widgets/learn/list_item.dart';

class Consts {
  Consts._();

  static const String appName = "VFXplainer";

  static const double horizontalPadding = 32;
  static const double topPadding = 80;
  static const double bottomPadding = 64;

  static const EdgeInsets pagePadding = EdgeInsets.only(
    left: horizontalPadding,
    right: horizontalPadding,
    top: topPadding,
    bottom: bottomPadding,
  );

  static const appColor = Color.fromARGB(255, 176, 177, 252);

  static const List<List<Widget>> cards = [
    [
      // Card 1: Intro
      CustomImage(
        name: "intro-1",
        header: true,
      ),
      CustomTitle(text: "¿Qué son los efectos visuales?"),
      CustomParagraph(
        text:
            "Los efectos visuales son un componente vital en casi todas las películas importantes de Hollywood en estos días, y como cualquier herramienta, su efectividad generalmente se reduce a cómo y por qué se usa.",
      ),
      CustomImage(name: "intro-2"),
      CustomParagraph(
        text:
            "Desde explosiones hasta criaturas fantásticas, los efectos visuales permiten a los cineastas dar vida a sus visiones más ambiciosas.",
      ),
      CustomParagraph(
        text:
            "Además, no solo se limitan al cine; los efectos visuales también se utilizan en videojuegos, publicidad y medios digitales.",
      ),
    ],
    [
      // Card 2: VFX Process
      CustomImage(
        name: "vfx-process-1",
        header: true,
      ),
      CustomTitle(text: "El proceso de VFX"),
      CustomParagraph(
        text:
            "El proceso de efectos visuales implica varias etapas, desde la preproducción hasta la postproducción.",
      ),
      CustomParagraph(
        text:
            "Los artistas de VFX utilizan software avanzado para crear y manipular imágenes digitales que se integran en las películas.",
      ),
      CustomImage(name: "vfx-process-2"),
      SizedBox(height: 2),
      ListItem(
        text:
            "Preproducción: Diseño de escenas, guiones gráficos y planificación de efectos antes del rodaje.",
      ),
      ListItem(
        text:
            "Rodaje: Se graban actores y escenarios, a menudo con pantallas verdes o elementos físicos.",
      ),
      ListItem(
        text:
            "Postproducción: Se añaden los efectos visuales, animaciones y corrección de color digitalmente.",
      ),
      SizedBox(height: 8),

      CustomImage(name: "vfx-process-3"),
      CustomParagraph(
        text:
            "Los efectos visuales no solo mejoran la estética de una película, sino que también ayudan a contar historias de maneras que serían imposibles de lograr con métodos tradicionales.",
      ),
    ],
    [
      // Card 3: Comparisons
      CustomImage(
        name: "comparisons-1",
        header: true,
      ),
      CustomTitle(text: "Comparaciones de VFX"),
      CustomParagraph(
        text:
            "A continuación, veremos algunas comparaciones entre escenas con y sin efectos visuales.",
      ),
      CustomImage(name: "comparisons-2"),
      CustomParagraph(
        text:
            "Nota como los efectos visuales pueden cambiar completamente la percepción de una escena.",
      ),
      CustomParagraph(
          text:
              "Sin los efectos visuales, muchas de las escenas más icónicas del cine no serían posibles."),
      CustomImage(name: "comparisons-3"),
      CustomParagraph(
        text:
            "Sería muy complejo y costoso recrear estas escenas con métodos tradicionales. Además, no se lograría el mismo nivel de detalle e inmersión.",
      ),
    ]
  ];
}
