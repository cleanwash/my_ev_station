import 'package:flutter/material.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';

class MapDetailScreen extends StatelessWidget {
  final ChargerModel charger;

  const MapDetailScreen({
    super.key,
    required this.charger,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            charger.statNm,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text('충전소 ID: ${charger.statId}'),
          Text('주소: ${charger.addr}'),
          Text('충전기 타입: ${charger.chgerType.chargerTypeDescription}'),
          Text('상태: ${charger.stat.statusDescription}'),
        ],
      ),
    );
  }
}
