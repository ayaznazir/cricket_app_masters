import 'package:json_annotation/json_annotation.dart';

part 'competition.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Competition {
  int? cid;
  String? title;
  String? abbr;
  String? type;
  String? category;
  String? matchFormat;
  String? status;
  String? season;
  String? datestart;
  String? dateend;
  String? totalMatches;
  String? totalRounds;
  String? totalTeams;
  String? country;

  Competition({
    this.cid,
    this.title,
    this.abbr,
    this.type,
    this.category,
    this.matchFormat,
    this.status,
    this.season,
    this.datestart,
    this.dateend,
    this.totalMatches,
    this.totalRounds,
    this.totalTeams,
    this.country,
  });

  factory Competition.fromJson(Map<String, dynamic> json) =>
      _$CompetitionFromJson(json);
}
