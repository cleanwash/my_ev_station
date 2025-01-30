import 'package:flutter/foundation.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';
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
      print('받아온 충전소 데이터: $chargers 정보');
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

  Future<void> setMapController(NaverMapController controller) async {
    print('맵 컨트롤러 설정');
    _getChargersUseCase.mapRepository.setController(controller);

    try {
      print('위치 정보 가져오기 시도');
      final myLocation =
          await _getChargersUseCase.mapRepository.getMyLocation();
      await _getChargersUseCase.mapRepository.moveToLocation(myLocation);

      if (state.chargers.isNotEmpty) {
        print('마커 추가 시도: ${state.chargers.length}개');
        _getChargersUseCase.mapRepository.addMarkers(state.chargers);
      }
    } catch (e) {
      print('위치 권한 오류: $e');
    }
  }

  void selectCharger(ChargerModel charger) {
    _state = state.copyWith(
      selectedCharger: charger,
      isDetailVisible: true,
    );
    notifyListeners();
  }

  void clearSelectedCharger() {
    _state = state.copyWith(
      selectedCharger: null,
      isDetailVisible: false,
    );
    notifyListeners();
  }
}
