import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ev_station/core/route/router_path.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkOnboarding();
  }

  void checkOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    final bool onboardingComplete =
        prefs.getBool('onboarding_complete') ?? false;
    if (!mounted) return;
    if (onboardingComplete) {
      context.go(RouterPath.main);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "최저가로 충전하세요",
            body: "본인의 신용카드, 충전카드를 조합해보세요",
            image: Lottie.asset('assets/animations/charge_station.json',
                fit: BoxFit.cover, height: 300),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(color: Colors.orange, fontSize: 24),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          ),
          PageViewModel(
            title: "자주 가는 충전소에 마커를 찍어보세요",
            body: "자주 가는 충전소에서 사용할 카드를 등록하세요",
            image: Lottie.asset('assets/animations/charger.json',
                fit: BoxFit.cover, height: 300),
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(color: Colors.orange, fontSize: 24),
              bodyTextStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          )
        ],
        next: const Text("Next"),
        done: const Text("Done"),
        onDone: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('onboarding_complete', true);
          if (!mounted) return;
          context.go(RouterPath.main);
        },
      ),
    );
  }
}
