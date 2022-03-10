// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      teamId: json['team_id'] as int?,
      name: json['name'] as String?,
      shortName: json['short_name'] as String?,
      logoUrl: json['logo_url'] as String?,
      scoresFull: json['scores_full'] as String?,
      scores: json['scores'] as String?,
      overs: json['overs'] as String?,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'team_id': instance.teamId,
      'name': instance.name,
      'short_name': instance.shortName,
      'logo_url': instance.logoUrl,
      'scores_full': instance.scoresFull,
      'scores': instance.scores,
      'overs': instance.overs,
    };
