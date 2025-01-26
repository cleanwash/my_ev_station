import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class EvApi {
  Future<http.Response> getChargerInfo() async {
    final apiKey = dotenv.env['EV_API'];
    return await http.get(Uri.parse(
      'https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?serviceKey=$apiKey&pageNo=1&numOfRows=10&zcode=11',
    ));
  }
}
