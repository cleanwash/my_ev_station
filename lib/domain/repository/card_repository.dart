import 'package:my_ev_station/domain/model/card_model.dart';

abstract interface class CardRepository {
  Future<List<CardModel>> getCards();
}
