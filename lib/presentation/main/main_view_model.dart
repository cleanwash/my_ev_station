import 'package:flutter/material.dart';
import 'package:my_ev_station/domain/repository/card_repository.dart';
import 'package:my_ev_station/presentation/main/main_ui_state.dart';

class MainViewModel with ChangeNotifier {
  MainUiState _state = MainUiState();
  MainUiState get state => _state;
  final CardRepository _cardRepository;

  MainViewModel({required CardRepository cardRepository})
      : _cardRepository = cardRepository;

  Future<void> loadCards() async {
    _state = state.copyWith(isLoading: true, error: null);
    notifyListeners();

    try {
      final cards = await _cardRepository.getCards();
      _state = state.copyWith(
        cards: cards,
        isLoading: false,
      );
    } catch (e) {
      _state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
    notifyListeners();
  }
}
