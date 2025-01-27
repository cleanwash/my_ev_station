import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';

class NaverMapRepository {
  NaverMapController? _mapController;

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

    return NCameraPosition(
        target: NLatLng(position.latitude, position.longitude), zoom: 12);
  }

  void addMarkers(List<ChargerModel> chargers) {
    if (_mapController == null) return;
    _mapController!.clearOverlays();

    for (var charger in chargers) {
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
      });

      _mapController!.addOverlay(marker);
    }
  }

  Future<void> moveToLocation(NCameraPosition position) async {
    _mapController?.updateCamera(NCameraUpdate.fromCameraPosition(position));
  }
}
