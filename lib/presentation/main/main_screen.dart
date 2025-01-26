import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_ev_station/core/component/card_list.dart';
import 'package:my_ev_station/data/data_source/mock_all_eligible_companies.dart';
import 'package:my_ev_station/domain/model/card_model.dart';
import 'package:my_ev_station/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  final void Function(CardModel) onTapDetail;
  const MainScreen({
    super.key,
    required this.onTapDetail,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String selectedCompany = allEligibleCompanies.first;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Center(
            child: Text(
              '⚡Find my EV Card⚡',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              '30장이 넘는 카드 할인카드, 15개가 넘는 충전소 카드',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(height: 45),
          Center(
            child: DropdownButton<String>(
              value: selectedCompany,
              items: allEligibleCompanies.toList().map((String company) {
                return DropdownMenuItem(
                  value: company,
                  child: Text(company),
                );
              }).toList()
                ..sort((a, b) => a.value!.compareTo(b.value!)),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCompany = newValue!;
                });
              },
            ),
          ),
          CardListWidget(
            selectedCompany: selectedCompany,
            isLoading: viewModel.state.isLoading,
            cards: viewModel.state.cards,
            onCardTap: widget.onTapDetail,
          )
        ],
      ),
    );
  }
}
