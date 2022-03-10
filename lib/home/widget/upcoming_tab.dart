import 'package:cricket/core/core.dart';
import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final upcomingMatches = FutureProvider<List<Match>>((ref) async {
  final matches = <Match>[];
  final response = await ref.watch(homeProvider).getLiveMatches();
  response.map((e) {
    if (e.status == 2) {
      matches.add(e);
    }
  }).toList();

  return matches;
});

class UpcomingTab extends HookConsumerWidget {
  const UpcomingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matches = ref.watch(upcomingMatches);
    return matches.when(
      data: (data) {
        return data.isEmpty
            ? const Center(
                child: Text('No Upcoming Matches'),
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  return UpcomingCard(
                    title: data[index].competition?.title,
                    format: data[index].formatStr,
                    teama: data[index].teama,
                    teamb: data[index].teamb,
                    subTitle: data[index].subtitle,
                  );
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: context.minBlockVertical * 2.0),
                itemCount: data.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
              );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (object, stackTrace) {
        return const Center(
          child: Text('No Upcoming Matches'),
        );
      },
    );
    // return Column(
    //   children: [
    //     const UpcomingCard(),
    //     SizedBox(height: context.minBlockVertical * 2.0),
    //     const UpcomingCard(),
    //     SizedBox(height: context.minBlockVertical * 2.0),
    //     const UpcomingCard(),
    //   ],
    // );
  }
}
