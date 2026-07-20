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
  bool _detailSheetOpen = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<MapViewModel>().getChargers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.state;

    if (state.isDetailVisible &&
        state.selectedCharger != null &&
        !_detailSheetOpen) {
      _detailSheetOpen = true;
      final charger = state.selectedCharger!;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showChargerDetail(context, charger).whenComplete(() {
          _detailSheetOpen = false;
          if (mounted) viewModel.clearSelectedCharger();
        });
      });
    }

    return Scaffold(
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : NaverMap(
              options: const NaverMapViewOptions(
                indoorEnable: true,
                locationButtonEnable: true,
                consumeSymbolTapEvents: true,
                symbolScale: 1.0,
              ),
              onMapReady: (controller) {
                viewModel.setMapController(controller);
              },
            ),
    );
  }

  Future<void> _showChargerDetail(
      BuildContext context, ChargerModel charger) {
    return showModalBottomSheet(
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
