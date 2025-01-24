// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      cardName: json['cardName'] as String,
      imageUrl: json['imageUrl'] as String,
      discountTiers: (json['discountTiers'] as List<dynamic>)
          .map((e) => DiscountTier.fromJson(e as Map<String, dynamic>))
          .toList(),
      eligibleCompanies: (json['eligibleCompanies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'cardName': instance.cardName,
      'imageUrl': instance.imageUrl,
      'discountTiers': instance.discountTiers,
      'eligibleCompanies': instance.eligibleCompanies,
    };

_$DiscountTierImpl _$$DiscountTierImplFromJson(Map<String, dynamic> json) =>
    _$DiscountTierImpl(
      maximumDiscount: (json['maximumDiscount'] as num).toInt(),
      monthlyDiscountRate: (json['monthlyDiscountRate'] as num).toInt(),
      previousMonthPerformance: PreviousMonthPerformance.fromJson(
          json['previousMonthPerformance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiscountTierImplToJson(_$DiscountTierImpl instance) =>
    <String, dynamic>{
      'maximumDiscount': instance.maximumDiscount,
      'monthlyDiscountRate': instance.monthlyDiscountRate,
      'previousMonthPerformance': instance.previousMonthPerformance,
    };

_$PreviousMonthPerformanceImpl _$$PreviousMonthPerformanceImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviousMonthPerformanceImpl(
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PreviousMonthPerformanceImplToJson(
        _$PreviousMonthPerformanceImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$CardModelListImpl _$$CardModelListImplFromJson(Map<String, dynamic> json) =>
    _$CardModelListImpl(
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CardModelListImplToJson(_$CardModelListImpl instance) =>
    <String, dynamic>{
      'cards': instance.cards,
    };
