import 'package:json_annotation/json_annotation.dart';

part 'toss.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Toss {
  String? text;
  int? winner;
  int? decision;

  Toss({
    this.text,
    this.winner,
    this.decision,
  });

  factory Toss.fromJson(Map<String, dynamic> json) => _$TossFromJson(json);
}
