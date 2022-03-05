import 'package:cricket/score/score.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class InternationalTab extends StatelessWidget {
  const InternationalTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScoreCard(
          cardTitle: 'Inter',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'Inter',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'Inter',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'Inter',
        ),
      ],
    );
  }
}
