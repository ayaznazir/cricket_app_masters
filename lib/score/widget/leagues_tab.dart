import 'package:cricket/score/score.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class LeaguesTab extends StatelessWidget {
  const LeaguesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScoreCard(
          cardTitle: 'League',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'League',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'League',
        ),
        SizedBox(height: context.minBlockVertical * 2.0),
        const ScoreCard(
          cardTitle: 'League',
        ),
      ],
    );
  }
}
