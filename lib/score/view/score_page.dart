import 'package:cricket/score/score.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scoreProvider = ChangeNotifierProvider<ScoreController>((ref) {
  return ScoreController();
});

class ScorePage extends HookConsumerWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scoreController = ref.watch(scoreProvider);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).add(
          const EdgeInsets.only(
            top: 20,
            bottom: 10,
          ),
        ),
        child: Column(
          children: [
            ScoreTab(
              items: [
                ScoreTabItem(text: 'All'),
                ScoreTabItem(text: 'T20I'),
                ScoreTabItem(text: 'Test'),
                ScoreTabItem(text: 'ODI'),
                ScoreTabItem(text: 'International'),
                ScoreTabItem(text: 'Leagues'),
              ],
              currentIndex: scoreController.currentTap,
              onChanged: (value) => scoreController.currentTap = value,
            ),
            SizedBox(height: context.minBlockVertical * 2.0),
            Expanded(
              child: SingleChildScrollView(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 800),
                  switchInCurve: Curves.easeIn,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: scoreController.scoreTabs[scoreController.currentTap],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
