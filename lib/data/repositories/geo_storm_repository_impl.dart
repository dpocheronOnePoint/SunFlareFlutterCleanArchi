import 'package:sun_flare_clean_archi/data/services/nasa_services.dart';
import 'package:sun_flare_clean_archi/domain/entities/geo_storm.dart';
import 'package:sun_flare_clean_archi/domain/repositories/geo_storm_repository.dart';
import 'package:sun_flare_clean_archi/data/models/geo_storm_dto.dart';

class GeoStormRepositoryImpl extends GeoStormRepository {
  final NasaService _nasaService;

  GeoStormRepositoryImpl(this._nasaService);

  @override
  Future<List<GeoStorm>> getStorms(
      {required DateTime from, required DateTime to}) async {
    final res = await _nasaService.getGeoStorms(from, to);
    return res.map((e) => e.toModel()).toList();
  }
}
