import 'package:cricket/ranking/ranking.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).add(
              const EdgeInsets.only(
                top: 20,
              ),
            ),
            child: RankingTab(
              items: [
                RankingTabItem(text: 'ODI'),
                RankingTabItem(text: 'T201'),
                RankingTabItem(text: 'Test'),
              ],
              currentIndex: 0,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: context.minBlockVertical * 2.0),
          RankSecondaryTab(
            items: [
              RankSecondaryTabItem(text: 'Team'),
              RankSecondaryTabItem(text: 'Batting'),
              RankSecondaryTabItem(text: 'Bowling'),
              RankSecondaryTabItem(text: 'Alrounder'),
            ],
            currentIndex: 0,
          ),
          Expanded(
            child: ListView.separated(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(30.0),
              itemBuilder: (context, index) {
                return Container(
                  child: Row(
                    children: [
                      Text('${index + 1}'),
                      const SizedBox(width: 10),
                      Image.asset('assets/png/flag.png'),
                      const SizedBox(width: 10),
                      const Text('Australia'),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Column(
                  children: const [
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                  ],
                );
              },
              itemCount: 10,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
