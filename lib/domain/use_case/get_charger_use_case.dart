import 'package:my_ev_station/domain/model/charger_model.dart';
import 'package:my_ev_station/domain/repository/charger_repository.dart';
import 'package:my_ev_station/domain/repository/naver_map_repository.dart';

class GetChargersUseCase {
  final ChargerRepository repository;
  final NaverMapRepository mapRepository;

  GetChargersUseCase({
    required this.repository,
    required this.mapRepository,
  });

  Future<List<ChargerModel>> execute() async {
    return repository.getChargers();
  }
}
