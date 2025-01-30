import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';
import 'package:my_ev_station/presentation/map/map_detail_screen.dart';
import 'package:my_ev_station/presentation/map/map_view_model.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      print('데이터 로드 시작');

      context.read<MapViewModel>().getChargers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('충전소 지도'),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : NaverMap(
              options: const NaverMapViewOptions(
                indoorEnable: true,
                locationButtonEnable: true,
                consumeSymbolTapEvents: true,
                symbolScale: 1.0, // 마커 크기 설정
              ),
              onMapReady: (controller) async {
                // async 추가
                print('지도가 준비되었습니다.');
                viewModel.setMapController(controller);

                print('현재 충전소 데이터 수: ${state.chargers.length}');

                // 마커 추가를 약간 지연
                Future.delayed(const Duration(milliseconds: 500), () {
                  for (var charger in state.chargers) {
                    print('마커 추가: ${charger.statNm}');
                    controller.addOverlay(
                      NMarker(
                        id: charger.statId,
                        position: NLatLng(charger.lat, charger.lng),
                      )..setOnTapListener((marker) {
                          print('마커 클릭: ${charger.statNm}');
                          viewModel.selectCharger(charger);
                          _showChargerDetail(context, charger);
                        }),
                    );
                  }
                });
              },
            ),
    );
  }

  void _showChargerDetail(BuildContext context, ChargerModel charger) {
    print('바텀시트를 표시합니다: ${charger.statNm}');
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.75,
        builder: (_, scrollController) => MapDetailScreen(
          charger: charger,
        ),
      ),
    );
  }
}
