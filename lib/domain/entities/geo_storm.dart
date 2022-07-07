import 'package:meta/meta.dart';

class GeoStorm {
  final String gstId;
  final DateTime startTime;

  GeoStorm({required this.gstId, required this.startTime});
}

final initialGeoStorm = GeoStorm(gstId: '', startTime: DateTime.now());
