import 'package:cricket/core/model/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Match {
  final int? matchId;
  final String? title;
  final String? subtitle;
  final int? format;
  final String? formatStr;
  final int? status;
  final String? statusStr;
  final String? statusNote;
  final String? verified;
  final String? preSquad;
  final int? gameState;
  final String? gameStateStr;
  final String? domestic;
  final Competition? competition;
  final Team? teama;
  final Team? teamb;
  final String? dateStart;
  final String? dateEnd;
  final int? timestampStart;
  final int? timestampEnd;
  final Venue? venue;
  final String? umpires;
  final String? referee;
  final String? equation;
  final String? live;
  final String? result;
  final String? winMargin;
  final int? commentary;
  final int? wagon;
  final int? latestInningNumber;
  final Toss? toss;

  Match({
    this.matchId,
    this.title,
    this.subtitle,
    this.format,
    this.formatStr,
    this.status,
    this.statusStr,
    this.statusNote,
    this.verified,
    this.preSquad,
    this.gameState,
    this.gameStateStr,
    this.domestic,
    this.competition,
    this.teama,
    this.teamb,
    this.dateStart,
    this.dateEnd,
    this.timestampStart,
    this.timestampEnd,
    this.venue,
    this.umpires,
    this.referee,
    this.equation,
    this.live,
    this.result,
    this.winMargin,
    this.commentary,
    this.wagon,
    this.latestInningNumber,
    this.toss,
  });

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}
