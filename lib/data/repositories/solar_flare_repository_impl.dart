import 'package:sun_flare_clean_archi/data/services/nasa_services.dart';
import 'package:sun_flare_clean_archi/domain/entities/solar_flare.dart';
import 'package:sun_flare_clean_archi/domain/repositories/solar_flare_repository.dart';
import 'package:sun_flare_clean_archi/data/models/solar_flare_dto.dart';

class SolarFlareRepositoryImpl extends SolarFlareRepository {
  final NasaService _nasaService;

  SolarFlareRepositoryImpl(this._nasaService);

  @override
  Future<List<SolarFlare>> getFlare(
      {required DateTime from, required DateTime to}) async {
    final res = await _nasaService.getFlares(from, to);
    return res.map((e) => e.toModel()).toList();
  }
}
