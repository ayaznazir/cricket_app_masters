// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Competition _$CompetitionFromJson(Map<String, dynamic> json) => Competition(
      cid: json['cid'] as int?,
      title: json['title'] as String?,
      abbr: json['abbr'] as String?,
      type: json['type'] as String?,
      category: json['category'] as String?,
      matchFormat: json['match_format'] as String?,
      status: json['status'] as String?,
      season: json['season'] as String?,
      datestart: json['datestart'] as String?,
      dateend: json['dateend'] as String?,
      totalMatches: json['total_matches'] as String?,
      totalRounds: json['total_rounds'] as String?,
      totalTeams: json['total_teams'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$CompetitionToJson(Competition instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'title': instance.title,
      'abbr': instance.abbr,
      'type': instance.type,
      'category': instance.category,
      'match_format': instance.matchFormat,
      'status': instance.status,
      'season': instance.season,
      'datestart': instance.datestart,
      'dateend': instance.dateend,
      'total_matches': instance.totalMatches,
      'total_rounds': instance.totalRounds,
      'total_teams': instance.totalTeams,
      'country': instance.country,
    };
