import 'package:cricket/home/home.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int _currentTap = 0;
  final List<Widget> _homeTabs = [
    const FinishedTab(),
    const LiveTab(),
    const UpcomingTab(),
  ];

  int get currentTap => _currentTap;

  List<Widget> get homeTabs => _homeTabs;

  set currentTap(int index) {
    _currentTap = index;
    notifyListeners();
  }
}
