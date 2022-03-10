import 'package:json_annotation/json_annotation.dart';

part 'venue.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  String? name;
  String? location;
  String? timezone;

  Venue({
    this.name,
    this.location,
    this.timezone,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
