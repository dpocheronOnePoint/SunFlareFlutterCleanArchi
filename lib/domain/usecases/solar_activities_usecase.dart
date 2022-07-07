import 'package:sun_flare_clean_archi/domain/entities/solar_activities.dart';
import 'package:sun_flare_clean_archi/domain/entities/solar_flare.dart';
import 'package:sun_flare_clean_archi/domain/entities/geo_storm.dart';
import 'package:sun_flare_clean_archi/domain/repositories/geo_storm_repository.dart';
import 'package:sun_flare_clean_archi/domain/repositories/solar_flare_repository.dart';

class SolarActivitiesUseCase {
  final GeoStormRepository _geoStormRepository;
  final SolarFlareRepository _solarFlareRepository;

  SolarActivitiesUseCase(this._geoStormRepository, this._solarFlareRepository);

  Future<SolarActivities> getLastSolarActivities() async {
    final fromDate = DateTime.now().subtract(Duration(days: 365));
    final toDate = DateTime.now();

    final storms =
        await _geoStormRepository.getStorms(from: fromDate, to: toDate);
    final flares =
        await _solarFlareRepository.getFlare(from: fromDate, to: toDate);

    return SolarActivities(lastFlare: flares.last, lastStorm: storms.last);
  }
}
