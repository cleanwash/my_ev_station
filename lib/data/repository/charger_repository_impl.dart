import 'dart:convert';
import 'package:my_ev_station/data/data_source/ev_api.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';
import 'package:my_ev_station/domain/repository/charger_repository.dart';

class ChargerRepositoryImpl implements ChargerRepository {
  final EvApi api;

  ChargerRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<ChargerModel>> getChargers() async {
    final response = await api.getChargerInfo();
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    final items = jsonResponse['items']['item'] as List<dynamic>;

    return items.map((item) => ChargerModel.fromJson(item)).toList();
  }
}
