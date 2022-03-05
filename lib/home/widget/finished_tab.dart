import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class FinishedTab extends StatelessWidget {
  const FinishedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeCard(),
        SizedBox(height: context.minBlockVertical * 2.0),
        const HomeCard(),
        SizedBox(height: context.minBlockVertical * 2.0),
        const HomeCard(),
      ],
    );
  }
}
