import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  factory CardModel({
    required String cardName,
    required String imageUrl,
    required List<DiscountTier> discountTiers,
    required List<String> eligibleCompanies,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);
}

@freezed
class DiscountTier with _$DiscountTier {
  factory DiscountTier({
    required int maximumDiscount,
    required int monthlyDiscountRate,
    required PreviousMonthPerformance previousMonthPerformance,
  }) = _DiscountTier;

  factory DiscountTier.fromJson(Map<String, dynamic> json) =>
      _$DiscountTierFromJson(json);
}

@freezed
class PreviousMonthPerformance with _$PreviousMonthPerformance {
  factory PreviousMonthPerformance({
    required int min,
    int? max,
  }) = _PreviousMonthPerformance;

  factory PreviousMonthPerformance.fromJson(Map<String, dynamic> json) =>
      _$PreviousMonthPerformanceFromJson(json);
}

@freezed
class CardModelList with _$CardModelList {
  factory CardModelList({
    required List<CardModel> cards, // Changed from CardModels to cards
  }) = _CardModelList;

  factory CardModelList.fromJson(Map<String, dynamic> json) =>
      _$CardModelListFromJson(json);
}
