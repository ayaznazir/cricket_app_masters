import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Team {
  int? teamId;
  String? name;
  String? shortName;
  String? logoUrl;
  String? scoresFull;
  String? scores;
  String? overs;

  Team({
    this.teamId,
    this.name,
    this.shortName,
    this.logoUrl,
    this.scoresFull,
    this.scores,
    this.overs,
  });

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
