import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class RankingTab extends StatelessWidget {
  const RankingTab({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);

  final int currentIndex;
  final List<RankingTabItem> items;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onChanged(index),
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? CsColors.black
                    : const Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                items[index].text,
                style: CsTextStyle.caption.copyWith(
                  fontSize: 12,
                  color: currentIndex == index ? CsColors.white : Colors.black,
                  fontWeight: CsFontWeight.semiBold,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: items.length,
      ),
    );
  }
}

class RankingTabItem {
  RankingTabItem({required this.text});

  final String text;
}
