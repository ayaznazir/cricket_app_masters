import 'package:cricket/score/score.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class AllTab extends StatelessWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScoreCard(
          cardTitle: 'T20I',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'Text',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'ODI',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'T20I',
        ),
      ],
    );
  }
}
