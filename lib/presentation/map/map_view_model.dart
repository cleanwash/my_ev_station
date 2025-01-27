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
    print('getChargers 시작');
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    try {
      final chargers = await _chargerRepository.getChargers();
      print('API 응답 받음');
      print('받은 데이터: $chargers');
      print('데이터 개수: ${chargers.length}');

      _state = state.copyWith(
        isLoading: false,
        chargers: chargers,
      );
      print('상태 업데이트 완료');
      print('현재 chargers 개수: ${_state.chargers.length}');
    } catch (e) {
      print('에러 발생: $e');
      print('에러 스택트레이스: ${StackTrace.current}');
      _state = state.copyWith(
        isLoading: false,
      );
    }
    notifyListeners();
  }
}
