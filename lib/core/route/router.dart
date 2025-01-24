import 'package:go_router/go_router.dart';
import 'package:my_ev_station/core/route/router_path.dart';
import 'package:my_ev_station/presentation/splash/splash.dart';

final router = GoRouter(
  initialLocation: RouterPath.splash,
  routes: [
    GoRoute(
      path: RouterPath.splash,
      builder: (context, state) => SplashScreen(),
    ),
  ],
);
