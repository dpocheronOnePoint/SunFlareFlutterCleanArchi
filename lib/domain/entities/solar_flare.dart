import 'package:meta/meta.dart';

class SolarFlare {
  final String flrId;
  final DateTime startTime;
  final DateTime? endTime;
  final String classType;
  final String sourceLocation;

  SolarFlare(
      {required this.flrId,
      required this.startTime,
      this.endTime,
      required this.classType,
      required this.sourceLocation});
}

final initialSolarFlare = SolarFlare(
    flrId: '', startTime: DateTime.now(), classType: '', sourceLocation: '');
