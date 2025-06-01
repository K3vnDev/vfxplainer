import 'package:go_router/go_router.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:vfxplainer/widgets/paragraph.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Cards();
  }
}

class _Cards extends StatefulWidget {
  const _Cards();

  @override
  State<_Cards> createState() => _CardsState();
}

class _CardsState extends State<_Cards> {
  int currentIndex = 0;

  void onNext(BuildContext context) {
    if (currentIndex >= cards.length - 1) {
      context.go("/quiz");
      return;
    }

    setState(() {
      currentIndex++;
    });
  }

  final List<List<Widget>> cards = [
    [
      // Card 1: Intro
      const _Image(
        name: "intro-1",
        header: true,
      ),
      const _Title(text: "¿Qué son los efectos visuales?"),
      const _Paragraph(
        text:
            "Los efectos visuales son un componente vital en casi todas las películas importantes de Hollywood en estos días, y como cualquier herramienta, su efectividad generalmente se reduce a cómo y por qué se usa.",
      ),
      const _Image(name: "intro-2"),
      const _Paragraph(
        text:
            "Desde explosiones hasta criaturas fantásticas, los efectos visuales permiten a los cineastas dar vida a sus visiones más ambiciosas.",
      ),
      const _Paragraph(
        text:
            "Además, no solo se limitan al cine; los efectos visuales también se utilizan en videojuegos, publicidad y medios digitales.",
      ),
    ],
    [
      // Card 2: VFX Process
      const _Image(
        name: "vfx-process-1",
        header: true,
      ),
      const _Title(text: "El proceso de VFX"),
      const _Paragraph(
        text:
            "El proceso de efectos visuales implica varias etapas, desde la preproducción hasta la postproducción.",
      ),
      const _Paragraph(
        text:
            "Los artistas de VFX utilizan software avanzado para crear y manipular imágenes digitales que se integran en las películas.",
      ),
      const _Image(name: "vfx-process-2"),
      const SizedBox(height: 2),
      const _ListItem(
        text:
            "Preproducción: Diseño de escenas, guiones gráficos y planificación de efectos antes del rodaje.",
      ),
      const _ListItem(
        text:
            "Rodaje: Se graban actores y escenarios, a menudo con pantallas verdes o elementos físicos.",
      ),
      const _ListItem(
        text:
            "Postproducción: Se añaden los efectos visuales, animaciones y corrección de color digitalmente.",
      ),
      const SizedBox(height: 8),

      const _Image(name: "vfx-process-3"),
      const _Paragraph(
        text:
            "Los efectos visuales no solo mejoran la estética de una película, sino que también ayudan a contar historias de maneras que serían imposibles de lograr con métodos tradicionales.",
      ),
    ],
    [
      // Card 3: Comparisons
      const _Image(
        name: "comparisons-1",
        header: true,
      ),
      const _Title(text: "Comparaciones de VFX"),
      const _Paragraph(
        text:
            "A continuación, veremos algunas comparaciones entre escenas con y sin efectos visuales.",
      ),
      const _Image(name: "comparisons-2"),
      const _Paragraph(
        text:
            "Nota como los efectos visuales pueden cambiar completamente la percepción de una escena.",
      ),
      const _Paragraph(
          text:
              "Sin los efectos visuales, muchas de las escenas más icónicas del cine no serían posibles."),
      const _Image(name: "comparisons-3"),
      const _Paragraph(
        text:
            "Sería muy complejo y costoso recrear estas escenas con métodos tradicionales. Además, no se lograría el mismo nivel de detalle e inmersión.",
      ),
    ]
  ];

  List<Widget> get selectedCard => cards[currentIndex];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: Consts.bottomPadding),
      itemBuilder: (context, index) {
        if (index == selectedCard.length) {
          return _NextButton(next: onNext);
        }
        return selectedCard[index];
      },
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemCount: selectedCard.length + 1,
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.name, this.header = false});

  final String name;
  final bool header;

  double get paddingX => header ? 0 : Consts.horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingX,
        right: paddingX,
        top: header ? 0 : 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(header ? 0 : 5),
        child: Image.asset(
          "assets/images/$name.jpg",
          width: 400,
          height: 220,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({required this.text});

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

class _Paragraph extends StatelessWidget {
  const _Paragraph({required this.text});

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

class _ListItem extends StatelessWidget {
  const _ListItem({required this.text});

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

class _NextButton extends StatelessWidget {
  const _NextButton({required this.next});

  final Function(BuildContext) next;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(25),
            padding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 32,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: BorderSide(
              color: Colors.white.withAlpha(40),
              width: 1,
            ),
          ),
          onPressed: () => next(context),
          icon: const Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
            size: 40,
          ),
          label: const Text(
            "Siguiente",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
