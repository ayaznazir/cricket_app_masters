// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toss.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Toss _$TossFromJson(Map<String, dynamic> json) => Toss(
      text: json['text'] as String?,
      winner: json['winner'] as int?,
      decision: json['decision'] as int?,
    );

Map<String, dynamic> _$TossToJson(Toss instance) => <String, dynamic>{
      'text': instance.text,
      'winner': instance.winner,
      'decision': instance.decision,
    };
