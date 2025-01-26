import 'package:flutter/material.dart';
import 'package:my_ev_station/core/component/app_bar_main.dart';
import 'package:my_ev_station/core/route/router_path.dart';
import 'package:my_ev_station/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class MainDetailScreen extends StatefulWidget {
  final String cardName;

  const MainDetailScreen({
    super.key,
    required this.cardName,
  });

  @override
  State<MainDetailScreen> createState() => _MainDetailScreenState();
}

class _MainDetailScreenState extends State<MainDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<MainViewModel>().loadCards();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final card = viewModel.state.cards.firstWhere(
      (card) => card.cardName == widget.cardName,
    );
    return Scaffold(
      appBar: AppBarMain(title: card.cardName),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => context.go(RouterPath.main),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          card.cardName,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(width: 48),
                    ],
                  ),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(card.imageUrl, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '할인 정보',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    ...card.discountTiers.map((tier) => ListTile(
                          title: Text('최대 할인: ${tier.maximumDiscount}원',
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text('월 할인율: ${tier.monthlyDiscountRate}%',
                              style: TextStyle(color: Colors.white70)),
                        )),
                    const SizedBox(height: 16),
                    Text(
                      '사용 가능 회사',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    ...card.eligibleCompanies.map((company) => ListTile(
                          title: Text(company,
                              style: TextStyle(color: Colors.white)),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
