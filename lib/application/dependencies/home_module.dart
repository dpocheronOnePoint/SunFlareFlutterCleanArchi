import 'package:sun_flare_clean_archi/domain/usecases/solar_activities_usecase.dart';
import 'package:sun_flare_clean_archi/presentation/home_state.dart';
import 'repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(SolarActivitiesUseCase(
        RepositoryModule.geoStormRepository(),
        RepositoryModule.solarFlareRepository()));
  }
}
