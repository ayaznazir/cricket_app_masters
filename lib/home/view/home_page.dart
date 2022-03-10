import 'package:cricket/core/core.dart';
import 'package:cricket/global_provider.dart';
import 'package:cricket/home/home.dart';
import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeProvider = ChangeNotifierProvider<HomeController>((ref) {
  return HomeController(matchRepository: ref.watch(matchRepository));
});

final matchesList = FutureProvider<List<Match>>((ref) async {
  return ref.read(homeProvider).getLiveMatches();
});

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeProvider);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.minBlockVertical * 4.0,
          ),
          Container(
            height: 140,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: CsColors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Live Matches',
                      style: CsTextStyle.overline.copyWith(
                        color: CsColors.white,
                        fontWeight: CsFontWeight.semiBold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'VIEW ALL',
                      style: CsTextStyle.caption.copyWith(
                        color: CsColors.white,
                        fontSize: 10,
                        fontWeight: CsFontWeight.regular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.minBlockVertical * 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 63,
                      width: 63,
                      decoration: const BoxDecoration(
                        color: CsColors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/png/home_img1.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 63,
                      width: 63,
                      decoration: const BoxDecoration(
                        color: CsColors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/png/home_img2.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 63,
                      width: 63,
                      decoration: const BoxDecoration(
                        color: CsColors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/png/home_img3.png'),
                        ),
                      ),
                    ),
                    Container(
                      height: 63,
                      width: 63,
                      decoration: const BoxDecoration(
                        color: CsColors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/png/home_img4.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Matches',
                  style: CsTextStyle.overline.copyWith(
                    color: CsColors.black,
                    fontWeight: CsFontWeight.semiBold,
                  ),
                ),
                SizedBox(height: context.minBlockVertical * 2.0),
                HomeTab(
                  items: [
                    HomeTabItem(text: 'Finished'),
                    HomeTabItem(text: 'Live'),
                    HomeTabItem(text: 'Upcoming'),
                  ],
                  currentIndex: homeController.currentTap,
                  onChanged: (value) => homeController.currentTap = value,
                ),
              ],
            ),
          ),
          SizedBox(height: context.minBlockVertical * 2.0),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              switchInCurve: Curves.easeIn,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: homeController.homeTabs[homeController.currentTap],
            ),
          ),
        ],
      ),
    );
  }
}
