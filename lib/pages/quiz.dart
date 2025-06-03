import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:vfxplainer/utils/quiz_question.dart';
import 'package:vfxplainer/widgets/learn/custom_title.dart';

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  final QuizQuestion quizQuestion = (quizQuestions..shuffle()).first;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        const CustomTitle(text: "Quiz"),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Consts.horizontalPadding,
          ),
          child: Text(
            quizQuestion.question,
            style: const TextStyle(
              fontSize: 32,
              color: Consts.appColor,
              height: 1.4,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Consts.horizontalPadding,
          ),
          child: Text(
            "Seleccione una opción...",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white.withAlpha(200),
              height: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: Consts.horizontalPadding,
          ),
          itemCount: quizQuestion.options.length,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 12,
                ),
                backgroundColor: Colors.white.withAlpha(30),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white.withAlpha(50),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                final isCorrect = index == quizQuestion.correctIndex;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      isCorrect ? '¡Correcto!' : 'Incorrecto ❌',
                      style: const TextStyle(fontSize: 18),
                    ),
                    backgroundColor: isCorrect ? Colors.green : Colors.red,
                    duration: const Duration(seconds: 1),
                  ),
                );
                if (isCorrect) {
                  context.go("/");
                }
              },
              child: Text(
                quizQuestion.options[index],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}
