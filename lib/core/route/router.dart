import 'package:go_router/go_router.dart';
import 'package:my_ev_station/core/navigation/navigation_screen.dart';
import 'package:my_ev_station/core/route/router_path.dart';
import 'package:my_ev_station/data/data_source/api_data.dart';
import 'package:my_ev_station/data/data_source/ev_api.dart';
import 'package:my_ev_station/data/repository/card_repository_impl.dart';
import 'package:my_ev_station/data/repository/charger_repository_impl.dart';
import 'package:my_ev_station/domain/repository/naver_map_repository.dart';
import 'package:my_ev_station/domain/use_case/get_charger_use_case.dart';
import 'package:my_ev_station/presentation/main/main_detail_screen.dart';
import 'package:my_ev_station/presentation/main/main_screen.dart';
import 'package:my_ev_station/presentation/main/main_view_model.dart';
import 'package:my_ev_station/presentation/map/map_screen.dart';
import 'package:my_ev_station/presentation/map/map_view_model.dart';
import 'package:my_ev_station/presentation/splash/splash.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: RouterPath.splash,
  routes: [
    GoRoute(
      path: RouterPath.splash,
      builder: (context, state) => SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onChangeIndex: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.main,
              builder: (context, state) => ChangeNotifierProvider(
                create: (context) => MainViewModel(
                  cardRepository: CardRepositoryImpl(
                    api: ApiData(),
                  ),
                ),
                child: MainScreen(
                  onTapDetail: (card) {
                    context.push(
                        '${RouterPath.main}/${RouterPath.cardDetail}/${card.cardName}');
                  },
                ),
              ),
              routes: [
                GoRoute(
                  path: '${RouterPath.cardDetail}/:name',
                  builder: (context, state) {
                    return ChangeNotifierProvider(
                      create: (context) => MainViewModel(
                        cardRepository: CardRepositoryImpl(
                          api: ApiData(),
                        ),
                      ),
                      child: MainDetailScreen(
                        cardName: state.pathParameters['name'] ?? '',
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterPath.map,
              builder: (context, state) => ChangeNotifierProvider(
                create: (context) => MapViewModel(
                  getChargersUseCase: GetChargersUseCase(
                    mapRepository: NaverMapRepository(),
                    repository: ChargerRepositoryImpl(
                      api: EvApi(),
                    ),
                  ),
                ),
                child: MapScreen(),
              ),
            )
          ],
        )
      ],
    )
  ],
);
