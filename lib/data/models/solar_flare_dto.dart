import 'package:sun_flare_clean_archi/domain/entities/solar_flare.dart';

class SolarFlareDTO {
  final String flrID;
  final DateTime startTime;
  final DateTime? endTime;
  final String classType;
  final String sourceLocation;
  final String link;

  SolarFlareDTO.fromApi(Map<String, dynamic> map)
      : flrID = map['flrID'],
        startTime = DateTime.parse(map['beginTime']),
        endTime =
            map['endTime'] != null ? DateTime.parse(map['endTime']) : null,
        classType = map['classTime'],
        sourceLocation = map['sourceLocation'],
        link = map['link'];
}
