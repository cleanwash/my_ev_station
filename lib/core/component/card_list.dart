import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_ev_station/core/component/card_item.dart';
import 'package:my_ev_station/domain/model/card_model.dart';

class CardListWidget extends StatelessWidget {
  final String selectedCompany;
  final bool isLoading;
  final String? error;
  final List<CardModel> cards;
  final Function(CardModel) onCardTap;

  const CardListWidget({
    super.key,
    required this.selectedCompany,
    required this.isLoading,
    this.error,
    required this.cards,
    required this.onCardTap,
  });

  @override
  Widget build(BuildContext context) {
    List<CardModel> filteredCards = selectedCompany == 'All'
        ? cards
        : cards
            .where((card) => card.eligibleCompanies.contains(selectedCompany))
            .toList();

    return SizedBox(
      height: 200,
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : error != null
              ? Center(child: Text('Error: $error'))
              : filteredCards.isEmpty
                  ? const Center(
                      child: Text('No cards available for this company'),
                    )
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredCards.length,
                      itemBuilder: (context, index) {
                        final card = filteredCards[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CardItem(
                            cardModel: card,
                            onTap: () => onCardTap(card),
                          ),
                        );
                      },
                    ),
    );
  }
}
