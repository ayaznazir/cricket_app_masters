// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      name: json['name'] as String?,
      location: json['location'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'timezone': instance.timezone,
    };
