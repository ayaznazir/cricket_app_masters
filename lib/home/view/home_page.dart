import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeController = ChangeNotifierProvider<HomeController>((ref) {
  return HomeController();
});

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homeController);
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: home.currentIndex,
        onTap: ref.read(homeController.notifier).onIndexChanged,
        items: [
          AppBottomNavigationBarItem(
            useCustomIcon: true,
            customIcon: 'whatshot',
          ),
          AppBottomNavigationBarItem(
            useCustomIcon: true,
            customIcon: 'ic_round',
          ),
          AppBottomNavigationBarItem(
            useCustomIcon: true,
            customIcon: 'live',
          ),
          AppBottomNavigationBarItem(
            useCustomIcon: true,
            //ic_round
            customIcon: 'sports_cricket',
          ),
          AppBottomNavigationBarItem(
            useCustomIcon: true,
            //ic_round
            customIcon: 'more_vert',
          ),
        ],
      ),
      body: IndexedStack(
        index: home.currentIndex,
        children: home.pages,
      ),
    );
  }
}
