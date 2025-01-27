import 'package:flutter/material.dart';
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
      context.read<MapViewModel>().getChargers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MapViewModel>(
        builder: (context, viewModel, child) {
          final state = viewModel.state;

          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: state.chargers.length,
            itemBuilder: (context, index) {
              final charger = state.chargers[index];
              print('충전소 $index: ${charger.statNm} - ${charger.addr}');
              return ListTile(
                title: Text(charger.statNm),
                subtitle: Text(charger.addr),
              );
            },
          );
        },
      ),
    );
  }
}
