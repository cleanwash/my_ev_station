import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';

class NaverMapRepository {
  static const NLatLng _gwanghwamun = NLatLng(37.5759, 126.9769);

  NaverMapController? _mapController;

  bool _isInSouthKorea(NLatLng position) {
    return position.latitude >= 33.0 &&
        position.latitude <= 38.7 &&
        position.longitude >= 124.5 &&
        position.longitude <= 132.0;
  }

  void setController(NaverMapController controller) {
    _mapController = controller;
  }

  bool isControllerReady() {
    return _mapController != null;
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

    var target = NLatLng(position.latitude, position.longitude);
    if (!_isInSouthKorea(target)) {
      target = _gwanghwamun;
    }

    return NCameraPosition(target: target, zoom: 12);
  }

  void addMarkers(List<ChargerModel> chargers,
      {void Function(ChargerModel charger)? onTap}) {
    if (_mapController == null) return;
    _mapController!.clearOverlays();

    // 하나의 충전소(statId)에 충전기가 여러 대 있을 수 있으므로 마커는 충전소당 1개만 표시
    final seenStatIds = <String>{};
    for (var charger in chargers) {
      if (!seenStatIds.add(charger.statId)) continue;

      final marker = NMarker(
        id: charger.statId,
        position: NLatLng(charger.lat, charger.lng),
      );

      final infoWindow = NInfoWindow.onMarker(
        id: charger.statId,
        text: charger.statNm,
      );

      marker.setOnTapListener((overlay) {
        marker.openInfoWindow(infoWindow);
        onTap?.call(charger);
      });

      _mapController!.addOverlay(marker);
    }
  }

  Future<void> moveToLocation(NCameraPosition position) async {
    _mapController?.updateCamera(NCameraUpdate.fromCameraPosition(position));
  }
}
