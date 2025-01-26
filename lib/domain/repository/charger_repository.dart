import 'package:my_ev_station/domain/model/charger_model.dart';

abstract interface class ChargerRepository {
  Future<List<ChargerModel>> getChargers();
}
