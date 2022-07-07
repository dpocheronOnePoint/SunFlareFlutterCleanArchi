import 'package:meta/meta.dart';
import 'package:sun_flare_clean_archi/domain/entities/solar_flare.dart';

abstract class SolarFlareRepository {
  Future<List<SolarFlare>> getFlare(
      {required DateTime from, required DateTime to});
}
