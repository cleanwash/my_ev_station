import 'package:my_ev_station/data/data_source/api_data.dart';
import 'package:my_ev_station/domain/model/card_model.dart';
import 'package:my_ev_station/domain/repository/card_repository.dart';

class CardRepositoryImpl implements CardRepository {
  final ApiData _api;

  CardRepositoryImpl({required ApiData api}) : _api = api;
  @override
  Future<List<CardModel>> getCards() async {
    final response = await _api.getCardApi();
    return response.map((e) => CardModel.fromJson(e)).toList();
  }
}
