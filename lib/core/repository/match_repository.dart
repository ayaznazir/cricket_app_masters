import 'package:cricket/core/core.dart';

abstract class MatchRepository {
  Future<List<Match>> matches();
}

class MatchRepositoryImpl implements MatchRepository {
  MatchRepositoryImpl({MatchApi? matchApi})
      : _matchApi = matchApi ?? MatchApi();

  final MatchApi _matchApi;

  @override
  Future<List<Match>> matches() async => _matchApi.matches();
}
