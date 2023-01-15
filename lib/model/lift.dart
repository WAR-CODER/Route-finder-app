
/// Use this class to represent a Lift
class Lift {
  final DateTime departureDateTime;

  //TODO

  Lift({required this.departureDateTime});

  Lift.fromJson(Map<String, Object?> jsonMap ) : this(
      departureDateTime: DateTime.parse(jsonMap['departureDateTime'] as String),
  );

  Map<String, Object?> toJson() {
    return {
      'departureDateTime': departureDateTime.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Lift{departureDateTime: $departureDateTime}';
  }
}