import 'package:cricket/score/score.dart';
import 'package:flutter/material.dart';

class ScoreController extends ChangeNotifier {
  int _currentTap = 0;
  final List<Widget> _scoreTabs = [
    const AllTab(),
    const T20iTab(),
    const TestTab(),
    const OdiTab(),
    const InternationalTab(),
    const LeaguesTab(),
  ];

  int get currentTap => _currentTap;

  List<Widget> get scoreTabs => _scoreTabs;

  set currentTap(int index) {
    _currentTap = index;
    notifyListeners();
  }
}
