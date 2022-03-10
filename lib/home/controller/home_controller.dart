import 'package:cricket/core/core.dart';
import 'package:cricket/home/home.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int _currentTap = 0;
  final MatchRepository _matchRepository;
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

  HomeController({required MatchRepository matchRepository})
      : _matchRepository = matchRepository;

  Future<List<Match>> getLiveMatches() async {
    try {
      final response = await _matchRepository.matches();
      print(response);
      return response;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
