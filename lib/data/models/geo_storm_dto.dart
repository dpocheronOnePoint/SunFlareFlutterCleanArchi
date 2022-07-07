import 'package:sun_flare_clean_archi/domain/entities/geo_storm.dart';

// DTO means Data Transfert Object
class GeoStormDTO {
  final String gstId;
  final DateTime startTime;
  final String link;

  GeoStormDTO.fromApi(Map<String, dynamic> map)
      : gstId = map['gstID'],
        startTime = DateTime.parse(map['startTime']),
        link = map['link'];
}

extension GeoStormMapper on GeoStormDTO {
  GeoStorm toModel() {
    return GeoStorm(gstId: gstId, startTime: startTime);
  }
}
