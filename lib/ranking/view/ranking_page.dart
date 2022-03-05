import 'package:cricket/ranking/ranking.dart';
import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).add(
        const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
      ),
      child: Column(
        children: [
          RankingTab(
            items: [
              RankingTabItem(text: 'ODI'),
              RankingTabItem(text: 'T201'),
              RankingTabItem(text: 'Test'),
            ],
            currentIndex: 0,
            onChanged: (value) {},
          ),
        ],
      ),
    ));
  }
}
