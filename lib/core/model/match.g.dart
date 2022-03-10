// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      matchId: json['match_id'] as int?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      format: json['format'] as int?,
      formatStr: json['format_str'] as String?,
      status: json['status'] as int?,
      statusStr: json['status_str'] as String?,
      statusNote: json['status_note'] as String?,
      verified: json['verified'] as String?,
      preSquad: json['pre_squad'] as String?,
      gameState: json['game_state'] as int?,
      gameStateStr: json['game_state_str'] as String?,
      domestic: json['domestic'] as String?,
      competition: json['competition'] == null
          ? null
          : Competition.fromJson(json['competition'] as Map<String, dynamic>),
      teama: json['teama'] == null
          ? null
          : Team.fromJson(json['teama'] as Map<String, dynamic>),
      teamb: json['teamb'] == null
          ? null
          : Team.fromJson(json['teamb'] as Map<String, dynamic>),
      dateStart: json['date_start'] as String?,
      dateEnd: json['date_end'] as String?,
      timestampStart: json['timestamp_start'] as int?,
      timestampEnd: json['timestamp_end'] as int?,
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      umpires: json['umpires'] as String?,
      referee: json['referee'] as String?,
      equation: json['equation'] as String?,
      live: json['live'] as String?,
      result: json['result'] as String?,
      winMargin: json['win_margin'] as String?,
      commentary: json['commentary'] as int?,
      wagon: json['wagon'] as int?,
      latestInningNumber: json['latest_inning_number'] as int?,
      toss: json['toss'] == null
          ? null
          : Toss.fromJson(json['toss'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'match_id': instance.matchId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'format': instance.format,
      'format_str': instance.formatStr,
      'status': instance.status,
      'status_str': instance.statusStr,
      'status_note': instance.statusNote,
      'verified': instance.verified,
      'pre_squad': instance.preSquad,
      'game_state': instance.gameState,
      'game_state_str': instance.gameStateStr,
      'domestic': instance.domestic,
      'competition': instance.competition,
      'teama': instance.teama,
      'teamb': instance.teamb,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'timestamp_start': instance.timestampStart,
      'timestamp_end': instance.timestampEnd,
      'venue': instance.venue,
      'umpires': instance.umpires,
      'referee': instance.referee,
      'equation': instance.equation,
      'live': instance.live,
      'result': instance.result,
      'win_margin': instance.winMargin,
      'commentary': instance.commentary,
      'wagon': instance.wagon,
      'latest_inning_number': instance.latestInningNumber,
      'toss': instance.toss,
    };
