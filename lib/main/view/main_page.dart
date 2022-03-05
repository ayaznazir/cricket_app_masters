import 'package:cricket/main/main.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainProvider = ChangeNotifierProvider<MainController>((ref) {
  return MainController();
});

class MainPage extends HookConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainController = ref.watch(mainProvider);
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: mainController.currentIndex,
        onTap: ref.read(mainProvider.notifier).onIndexChanged,
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
        index: mainController.currentIndex,
        children: mainController.pages,
      ),
    );
  }
}
