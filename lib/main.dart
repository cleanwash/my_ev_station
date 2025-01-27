import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:my_ev_station/core/route/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //전기차 충전 api 정보
  await dotenv.load(fileName: ".env");
//네이버 지도
  await NaverMapSdk.instance.initialize(
    clientId: dotenv.env['CLIENTID']!,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
