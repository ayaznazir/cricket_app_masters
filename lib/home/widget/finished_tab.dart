import 'package:cricket/core/core.dart';
import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final matchesData = FutureProvider<List<Match>>((ref) async {
  final matches = <Match>[];
  final response = await ref.watch(homeProvider).getLiveMatches();
  response.map((e) {
    if (e.status == 2) {
      matches.add(e);
    }
  }).toList();

  return matches;
});

class FinishedTab extends HookConsumerWidget {
  const FinishedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matches = ref.watch(matchesData);
    return matches.when(
      data: (data) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return HomeCard(
              title: data[index].competition?.title,
              format: data[index].formatStr,
              teama: data[index].teama,
              teamb: data[index].teamb,
              statusNote: data[index].statusNote,
              id: data[index].matchId.toString(),
              subTitle: data[index].subtitle,
              abbr: data[index].competition?.abbr ?? '',
              isLive: false,
              over: data[index].teamb!.overs,
              target: data[index].competition?.totalMatches ?? '',
            );
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: context.minBlockVertical * 2.0),
          itemCount: data.length,
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
        );

        // Column(
        //   children: List.

        //   // [
        //   //   const HomeCard(),
        //   //   SizedBox(height: context.minBlockVertical * 2.0),
        //   //   const HomeCard(),
        //   //   SizedBox(height: context.minBlockVertical * 2.0),
        //   //   const HomeCard(),
        //   // ],
        // );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (object, stackTrace) {
        return Container();
      },
    );
  }
}
