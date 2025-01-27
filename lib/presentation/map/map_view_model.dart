import 'package:flutter/widgets.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_ev_station/domain/repository/charger_repository.dart';
import 'package:my_ev_station/presentation/map/map_ui_state.dart';

class MapViewModel with ChangeNotifier {
  final ChargerRepository _chargerRepository;
  MapUiState _state = MapUiState();
  MapUiState get state => _state;
  NaverMapController? _mapController;

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

      if (_mapController != null) {
        // addMarkers();
      }
    } catch (e) {
      _state = state.copyWith(
        isLoading: false,
      );
    }
    notifyListeners();
  }

  Future<NCameraPosition> getMyLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are denied forever');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return NCameraPosition(
        target: NLatLng(position.latitude, position.longitude), zoom: 12);
  }

  void setMapController(NaverMapController controller) async {
    _mapController = controller;
    try {
      final myLocation = await getMyLocation();
      _mapController?.updateCamera(
        NCameraUpdate.fromCameraPosition(myLocation),
      );
      // addMarkers();
    } catch (e) {
      print('위치 권한 오류: $e');
    }
  }

  // void addMarkers() {
  //   if (_mapController == null) return;
  //   _mapController!.clearOverlays();

  //   for (var charger in state.chargers) {
  //     final marker = NMarker(
  //       id: charger.statId,
  //       position: NLatLng(charger.lat, charger.lng),
  //     );

  //     final infoWindow = NInfoWindow.onMarker(
  //       id: charger.statId,
  //       text: charger.statNm,
  //     );

  //     marker.setOnTapListener((overlay) {
  //       marker.openInfoWindow(infoWindow);
  //       _showBottomSheet(charger);
  //     });

  //     _mapController!.addOverlay(marker);
  //   }
  // }

  // void _showBottomSheet(ChargerModel charger) {
  //   if (_state.context == null) return;

  //   showModalBottomSheet(
  //     context: _state.context!,
  //     builder: (context) => Container(
  //       padding: const EdgeInsets.all(16),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             charger.statNm,
  //             style: const TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //           const SizedBox(height: 8),
  //           Text(charger.addr),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
