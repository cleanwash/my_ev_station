import 'package:my_ev_station/data/data_source/mock_card_data.dart';

class ApiData {
  Future<List<Map<String, dynamic>>> getCardApi() async {
    await Future.delayed(
      Duration(microseconds: 500),
    );
    return MockCardData.cards;
  }
}
