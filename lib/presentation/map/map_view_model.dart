import 'package:flutter/widgets.dart';
import 'package:my_ev_station/domain/repository/charger_repository.dart';
import 'package:my_ev_station/presentation/map/map_ui_state.dart';

class MapViewModel with ChangeNotifier {
  final ChargerRepository _chargerRepository;
  MapUiState _state = MapUiState();
  MapUiState get state => _state;

  MapViewModel({required ChargerRepository chargerRepository})
      : _chargerRepository = chargerRepository;

  Future<void> getChargers() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    try {
      final chargers = await _chargerRepository.getChargers();

      _state = state.copyWith(
        isLoading: false,
        chargers: chargers,
      );
    } catch (e) {
      _state = state.copyWith(
        isLoading: false,
      );
    }
    notifyListeners();
  }
}
