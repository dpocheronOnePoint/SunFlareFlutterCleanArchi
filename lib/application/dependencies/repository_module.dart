import 'package:sun_flare_clean_archi/domain/repositories/geo_storm_repository.dart';
import 'package:sun_flare_clean_archi/domain/repositories/solar_flare_repository.dart';
import 'package:sun_flare_clean_archi/data/repositories/geo_storm_repository_impl.dart';
import 'package:sun_flare_clean_archi/data/repositories/solar_flare_repository_impl.dart';
import 'package:sun_flare_clean_archi/data/services/nasa_services.dart';

class RepositoryModule {
  static final NasaService _nasaService = NasaService();

  static GeoStormRepository geoStormRepository() {
    return GeoStormRepositoryImpl(_nasaService);
  }

  static SolarFlareRepository solarFlareRepository() {
    return SolarFlareRepositoryImpl(_nasaService);
  }
}
