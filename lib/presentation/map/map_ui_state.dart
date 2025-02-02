import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';

part 'map_ui_state.freezed.dart';
part 'map_ui_state.g.dart';

@freezed
class MapUiState with _$MapUiState {
  factory MapUiState({
    @Default(false) bool isLoading,
    @Default([]) List<ChargerModel> chargers,
    ChargerModel? selectedCharger,
    @Default(false) bool isDetailVisible,
  }) = _MapUiState;

  factory MapUiState.fromJson(Map<String, dynamic> json) =>
      _$MapUiStateFromJson(json);
}
