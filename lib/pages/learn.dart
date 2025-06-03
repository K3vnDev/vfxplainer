import 'package:go_router/go_router.dart';
import 'package:vfxplainer/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:vfxplainer/widgets/learn/navigation_buttons.dart';

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
  final ScrollController _scrollController = ScrollController();

  void onNavigate(BuildContext context, int direction) {
    int navigatingIndex = currentIndex + direction;

    if (navigatingIndex >= Consts.cards.length) {
      context.go("/quiz");
      return;
    }

    setState(() {
      currentIndex = navigatingIndex;
    });
    _scrollController.jumpTo(0.0);
  }

  List<Widget> get selectedCard => Consts.cards[currentIndex];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(bottom: Consts.bottomPadding),
      itemBuilder: (context, index) {
        if (index == selectedCard.length) {
          return NavigationButtons(
            onNavigate: onNavigate,
            currentIndex: currentIndex,
          );
        }
        return selectedCard[index];
      },
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      itemCount: selectedCard.length + 1,
    );
  }
}
