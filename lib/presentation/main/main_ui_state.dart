import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ev_station/domain/model/card_model.dart';

part 'main_ui_state.freezed.dart';
part 'main_ui_state.g.dart';

@freezed
class MainUiState with _$MainUiState {
  factory MainUiState({
    @Default(false) isLoading,
    @Default([]) List<CardModel> cards,
    String? error,
  }) = _MainUiState;

  factory MainUiState.fromJson(Map<String, dynamic> json) =>
      _$MainUiStateFromJson(json);
}
