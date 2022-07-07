import 'package:meta/meta.dart';
import 'package:sun_flare_clean_archi/domain/entities/geo_storm.dart';

abstract class GeoStormRepository {
  Future<List<GeoStorm>> getStorms(
      {required DateTime from, required DateTime to});
}
