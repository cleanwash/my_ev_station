import 'package:my_ev_station/data/data_source/ev_api.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';
import 'package:my_ev_station/domain/repository/charger_repository.dart';

class ChargerRepositoryImpl implements ChargerRepository {
  final EvApi _api;

  ChargerRepositoryImpl({required EvApi api}) : _api = api;

  @override
  Future<List<ChargerModel>> getChargers() async {
    print('Repository: getChargers 호출됨');
    final chargers = await _api.getChargerInfo();
    print('Repository: 받은 데이터 개수: ${chargers.length}');
    return chargers;
  }
}
