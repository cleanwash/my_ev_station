// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CardModel _$CardModelFromJson(Map<String, dynamic> json) => _CardModel(
  cardName: json['cardName'] as String,
  imageUrl: json['imageUrl'] as String,
  discountTiers: (json['discountTiers'] as List<dynamic>)
      .map((e) => DiscountTier.fromJson(e as Map<String, dynamic>))
      .toList(),
  eligibleCompanies: (json['eligibleCompanies'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$CardModelToJson(_CardModel instance) =>
    <String, dynamic>{
      'cardName': instance.cardName,
      'imageUrl': instance.imageUrl,
      'discountTiers': instance.discountTiers,
      'eligibleCompanies': instance.eligibleCompanies,
    };

_DiscountTier _$DiscountTierFromJson(Map<String, dynamic> json) =>
    _DiscountTier(
      maximumDiscount: (json['maximumDiscount'] as num).toInt(),
      monthlyDiscountRate: (json['monthlyDiscountRate'] as num).toInt(),
      previousMonthPerformance: PreviousMonthPerformance.fromJson(
        json['previousMonthPerformance'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DiscountTierToJson(_DiscountTier instance) =>
    <String, dynamic>{
      'maximumDiscount': instance.maximumDiscount,
      'monthlyDiscountRate': instance.monthlyDiscountRate,
      'previousMonthPerformance': instance.previousMonthPerformance,
    };

_PreviousMonthPerformance _$PreviousMonthPerformanceFromJson(
  Map<String, dynamic> json,
) => _PreviousMonthPerformance(
  min: (json['min'] as num).toInt(),
  max: (json['max'] as num?)?.toInt(),
);

Map<String, dynamic> _$PreviousMonthPerformanceToJson(
  _PreviousMonthPerformance instance,
) => <String, dynamic>{'min': instance.min, 'max': instance.max};

_CardModelList _$CardModelListFromJson(Map<String, dynamic> json) =>
    _CardModelList(
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CardModelListToJson(_CardModelList instance) =>
    <String, dynamic>{'cards': instance.cards};
