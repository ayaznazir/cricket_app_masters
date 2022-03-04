import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onChanged,
  }) : super(key: key);

  final int currentIndex;
  final List<HomeTabItem> items;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (index) {
        return Container(
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
              color: currentIndex == index ? CsColors.white : Colors.black,
              fontWeight: CsFontWeight.semiBold,
            ),
          ),
        );
      }),
    );
  }
}

class HomeTabItem {
  HomeTabItem({required this.text});

  final String text;
}
