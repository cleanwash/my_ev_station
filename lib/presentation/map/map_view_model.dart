import 'package:flutter/foundation.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:my_ev_station/domain/use_case/get_charger_use_case.dart';
import 'package:my_ev_station/presentation/map/map_ui_state.dart';
class MapViewModel with ChangeNotifier {
  final GetChargersUseCase _getChargersUseCase;
  MapUiState _state = MapUiState();
  MapUiState get state => _state;

  MapViewModel({
    required GetChargersUseCase getChargersUseCase,
  }) : _getChargersUseCase = getChargersUseCase;

  Future<void> getChargers() async {
    print('getChargers 호출됨');
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    try {
      final chargers = await _getChargersUseCase.execute();
      print('받아온 충전소 데이터: ${chargers.length}개');
      _state = state.copyWith(
        isLoading: false,
        chargers: chargers,
      );
    } catch (e) {
      print('충전소 데이터 로드 에러: $e');
      _state = state.copyWith(
        isLoading: false,
      );
    }
    notifyListeners();
  }

  void setMapController(NaverMapController controller) async {
    _getChargersUseCase.mapRepository.setController(controller);

    try {
      final myLocation = await _getChargersUseCase.mapRepository.getMyLocation();
      await _getChargersUseCase.mapRepository.moveToLocation(myLocation);
      
      if (state.chargers.isNotEmpty) {
        _getChargersUseCase.mapRepository.addMarkers(state.chargers);
      }
    } catch (e) {
      print('위치 권한 오류: $e');
    }
  }
}
