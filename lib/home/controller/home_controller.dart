import 'package:cricket/home/home.dart';
import 'package:cricket/live/view/live_page.dart';
import 'package:cricket/more/more.dart';
import 'package:cricket/ranking/ranking.dart';
import 'package:cricket/score/score.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  HomeController() {
    _pages = [
      const HomeBodyPage(),
      const ScorePage(),
      const LivePage(),
      const RankingPage(),
      const MorePage(),
    ];
  }

  int _currentIndex = 0;
  List<Widget> _pages = [];

  List<Widget> get pages => _pages;

  int get currentIndex => _currentIndex;

  void onIndexChanged(int value) {
    _currentIndex = value;
    print(_currentIndex);
    notifyListeners();
  }
}
