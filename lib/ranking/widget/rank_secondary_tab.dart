import 'package:cricket/ranking/ranking.dart';
import 'package:flutter/material.dart';

class RankSecondaryTab extends StatelessWidget {
  const RankSecondaryTab({
    Key? key,
    required this.items,
    required this.currentIndex,
  }) : super(key: key);

  final List<RankSecondaryTabItem> items;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFF0F0F0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          items.length,
          (index) => ScoreButton(
            isActive: index == currentIndex,
            text: items[index].text,
          ),
        ),
      ),
    );
  }
}

class RankSecondaryTabItem {
  RankSecondaryTabItem({required this.text});

  final String text;
}
