// final sharePrefProvider = Provider<SharedPreferences>((ref) {
//   throw UnimplementedError();
// });

import 'package:cricket/core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final matchRepository = Provider<MatchRepository>((ref) {
  return MatchRepositoryImpl();
});
