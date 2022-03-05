import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class ScoreButton extends StatelessWidget {
  const ScoreButton({
    Key? key,
    required this.isActive,
    required this.text,
  }) : super(key: key);

  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: isActive ? CsColors.white : const Color(0xFFF0F0F0),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}
