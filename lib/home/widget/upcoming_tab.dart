import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UpcomingCard(),
        SizedBox(height: context.minBlockVertical * 2.0),
        const UpcomingCard(),
        SizedBox(height: context.minBlockVertical * 2.0),
        const UpcomingCard(),
      ],
    );
  }
}
