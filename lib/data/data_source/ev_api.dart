import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import 'package:my_ev_station/domain/model/charger_model.dart';

class EvApi {
  final apiKey = dotenv.env['EV_API'];

  Future<List<ChargerModel>> getChargerInfo() async {
    final response = await http.get(Uri.parse(
        'https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?serviceKey=$apiKey'));

    final transformer = Xml2Json();
    transformer.parse(utf8.decode(response.bodyBytes));
    final jsonString = transformer.toParker();

    // JSON 파싱
    final jsonResponse = jsonDecode(jsonString);
    final items = jsonResponse['response']['body']['items']['item'] as List;

    return items.map((e) => ChargerModel.fromJson(e)).toList();
  }
}
