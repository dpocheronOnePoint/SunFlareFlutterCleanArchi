import 'package:mobx/mobx.dart';
import 'package:sun_flare_clean_archi/domain/usecases/solar_activities_usecase.dart';
import 'package:sun_flare_clean_archi/domain/entities/solar_activities.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._useCase) {
    getSolarActivities();
  }

  final SolarActivitiesUseCase _useCase;

  @observable
  SolarActivities solarActivities;

  @observable
  bool isLoading = false;

  @action
  Future<void> getSolarActivities() async {
    isLoading = true;
    solarActivities = await _useCase.getLastSolarActivities();
    isLoading = false;
  }
}
