// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CardModel {

 String get cardName; String get imageUrl; List<DiscountTier> get discountTiers; List<String> get eligibleCompanies;
/// Create a copy of CardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardModelCopyWith<CardModel> get copyWith => _$CardModelCopyWithImpl<CardModel>(this as CardModel, _$identity);

  /// Serializes this CardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardModel&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.discountTiers, discountTiers)&&const DeepCollectionEquality().equals(other.eligibleCompanies, eligibleCompanies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardName,imageUrl,const DeepCollectionEquality().hash(discountTiers),const DeepCollectionEquality().hash(eligibleCompanies));

@override
String toString() {
  return 'CardModel(cardName: $cardName, imageUrl: $imageUrl, discountTiers: $discountTiers, eligibleCompanies: $eligibleCompanies)';
}


}

/// @nodoc
abstract mixin class $CardModelCopyWith<$Res>  {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) _then) = _$CardModelCopyWithImpl;
@useResult
$Res call({
 String cardName, String imageUrl, List<DiscountTier> discountTiers, List<String> eligibleCompanies
});




}
/// @nodoc
class _$CardModelCopyWithImpl<$Res>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._self, this._then);

  final CardModel _self;
  final $Res Function(CardModel) _then;

/// Create a copy of CardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardName = null,Object? imageUrl = null,Object? discountTiers = null,Object? eligibleCompanies = null,}) {
  return _then(_self.copyWith(
cardName: null == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,discountTiers: null == discountTiers ? _self.discountTiers : discountTiers // ignore: cast_nullable_to_non_nullable
as List<DiscountTier>,eligibleCompanies: null == eligibleCompanies ? _self.eligibleCompanies : eligibleCompanies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CardModel].
extension CardModelPatterns on CardModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardModel value)  $default,){
final _that = this;
switch (_that) {
case _CardModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardModel value)?  $default,){
final _that = this;
switch (_that) {
case _CardModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardName,  String imageUrl,  List<DiscountTier> discountTiers,  List<String> eligibleCompanies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardModel() when $default != null:
return $default(_that.cardName,_that.imageUrl,_that.discountTiers,_that.eligibleCompanies);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardName,  String imageUrl,  List<DiscountTier> discountTiers,  List<String> eligibleCompanies)  $default,) {final _that = this;
switch (_that) {
case _CardModel():
return $default(_that.cardName,_that.imageUrl,_that.discountTiers,_that.eligibleCompanies);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardName,  String imageUrl,  List<DiscountTier> discountTiers,  List<String> eligibleCompanies)?  $default,) {final _that = this;
switch (_that) {
case _CardModel() when $default != null:
return $default(_that.cardName,_that.imageUrl,_that.discountTiers,_that.eligibleCompanies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardModel implements CardModel {
   _CardModel({required this.cardName, required this.imageUrl, required final  List<DiscountTier> discountTiers, required final  List<String> eligibleCompanies}): _discountTiers = discountTiers,_eligibleCompanies = eligibleCompanies;
  factory _CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);

@override final  String cardName;
@override final  String imageUrl;
 final  List<DiscountTier> _discountTiers;
@override List<DiscountTier> get discountTiers {
  if (_discountTiers is EqualUnmodifiableListView) return _discountTiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_discountTiers);
}

 final  List<String> _eligibleCompanies;
@override List<String> get eligibleCompanies {
  if (_eligibleCompanies is EqualUnmodifiableListView) return _eligibleCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eligibleCompanies);
}


/// Create a copy of CardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardModelCopyWith<_CardModel> get copyWith => __$CardModelCopyWithImpl<_CardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardModel&&(identical(other.cardName, cardName) || other.cardName == cardName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._discountTiers, _discountTiers)&&const DeepCollectionEquality().equals(other._eligibleCompanies, _eligibleCompanies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardName,imageUrl,const DeepCollectionEquality().hash(_discountTiers),const DeepCollectionEquality().hash(_eligibleCompanies));

@override
String toString() {
  return 'CardModel(cardName: $cardName, imageUrl: $imageUrl, discountTiers: $discountTiers, eligibleCompanies: $eligibleCompanies)';
}


}

/// @nodoc
abstract mixin class _$CardModelCopyWith<$Res> implements $CardModelCopyWith<$Res> {
  factory _$CardModelCopyWith(_CardModel value, $Res Function(_CardModel) _then) = __$CardModelCopyWithImpl;
@override @useResult
$Res call({
 String cardName, String imageUrl, List<DiscountTier> discountTiers, List<String> eligibleCompanies
});




}
/// @nodoc
class __$CardModelCopyWithImpl<$Res>
    implements _$CardModelCopyWith<$Res> {
  __$CardModelCopyWithImpl(this._self, this._then);

  final _CardModel _self;
  final $Res Function(_CardModel) _then;

/// Create a copy of CardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardName = null,Object? imageUrl = null,Object? discountTiers = null,Object? eligibleCompanies = null,}) {
  return _then(_CardModel(
cardName: null == cardName ? _self.cardName : cardName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,discountTiers: null == discountTiers ? _self._discountTiers : discountTiers // ignore: cast_nullable_to_non_nullable
as List<DiscountTier>,eligibleCompanies: null == eligibleCompanies ? _self._eligibleCompanies : eligibleCompanies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DiscountTier {

 int get maximumDiscount; int get monthlyDiscountRate; PreviousMonthPerformance get previousMonthPerformance;
/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<DiscountTier> get copyWith => _$DiscountTierCopyWithImpl<DiscountTier>(this as DiscountTier, _$identity);

  /// Serializes this DiscountTier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscountTier&&(identical(other.maximumDiscount, maximumDiscount) || other.maximumDiscount == maximumDiscount)&&(identical(other.monthlyDiscountRate, monthlyDiscountRate) || other.monthlyDiscountRate == monthlyDiscountRate)&&(identical(other.previousMonthPerformance, previousMonthPerformance) || other.previousMonthPerformance == previousMonthPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximumDiscount,monthlyDiscountRate,previousMonthPerformance);

@override
String toString() {
  return 'DiscountTier(maximumDiscount: $maximumDiscount, monthlyDiscountRate: $monthlyDiscountRate, previousMonthPerformance: $previousMonthPerformance)';
}


}

/// @nodoc
abstract mixin class $DiscountTierCopyWith<$Res>  {
  factory $DiscountTierCopyWith(DiscountTier value, $Res Function(DiscountTier) _then) = _$DiscountTierCopyWithImpl;
@useResult
$Res call({
 int maximumDiscount, int monthlyDiscountRate, PreviousMonthPerformance previousMonthPerformance
});


$PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance;

}
/// @nodoc
class _$DiscountTierCopyWithImpl<$Res>
    implements $DiscountTierCopyWith<$Res> {
  _$DiscountTierCopyWithImpl(this._self, this._then);

  final DiscountTier _self;
  final $Res Function(DiscountTier) _then;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maximumDiscount = null,Object? monthlyDiscountRate = null,Object? previousMonthPerformance = null,}) {
  return _then(_self.copyWith(
maximumDiscount: null == maximumDiscount ? _self.maximumDiscount : maximumDiscount // ignore: cast_nullable_to_non_nullable
as int,monthlyDiscountRate: null == monthlyDiscountRate ? _self.monthlyDiscountRate : monthlyDiscountRate // ignore: cast_nullable_to_non_nullable
as int,previousMonthPerformance: null == previousMonthPerformance ? _self.previousMonthPerformance : previousMonthPerformance // ignore: cast_nullable_to_non_nullable
as PreviousMonthPerformance,
  ));
}
/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance {
  
  return $PreviousMonthPerformanceCopyWith<$Res>(_self.previousMonthPerformance, (value) {
    return _then(_self.copyWith(previousMonthPerformance: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiscountTier].
extension DiscountTierPatterns on DiscountTier {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscountTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscountTier value)  $default,){
final _that = this;
switch (_that) {
case _DiscountTier():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscountTier value)?  $default,){
final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maximumDiscount,  int monthlyDiscountRate,  PreviousMonthPerformance previousMonthPerformance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that.maximumDiscount,_that.monthlyDiscountRate,_that.previousMonthPerformance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maximumDiscount,  int monthlyDiscountRate,  PreviousMonthPerformance previousMonthPerformance)  $default,) {final _that = this;
switch (_that) {
case _DiscountTier():
return $default(_that.maximumDiscount,_that.monthlyDiscountRate,_that.previousMonthPerformance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maximumDiscount,  int monthlyDiscountRate,  PreviousMonthPerformance previousMonthPerformance)?  $default,) {final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that.maximumDiscount,_that.monthlyDiscountRate,_that.previousMonthPerformance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscountTier implements DiscountTier {
   _DiscountTier({required this.maximumDiscount, required this.monthlyDiscountRate, required this.previousMonthPerformance});
  factory _DiscountTier.fromJson(Map<String, dynamic> json) => _$DiscountTierFromJson(json);

@override final  int maximumDiscount;
@override final  int monthlyDiscountRate;
@override final  PreviousMonthPerformance previousMonthPerformance;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountTierCopyWith<_DiscountTier> get copyWith => __$DiscountTierCopyWithImpl<_DiscountTier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountTierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscountTier&&(identical(other.maximumDiscount, maximumDiscount) || other.maximumDiscount == maximumDiscount)&&(identical(other.monthlyDiscountRate, monthlyDiscountRate) || other.monthlyDiscountRate == monthlyDiscountRate)&&(identical(other.previousMonthPerformance, previousMonthPerformance) || other.previousMonthPerformance == previousMonthPerformance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximumDiscount,monthlyDiscountRate,previousMonthPerformance);

@override
String toString() {
  return 'DiscountTier(maximumDiscount: $maximumDiscount, monthlyDiscountRate: $monthlyDiscountRate, previousMonthPerformance: $previousMonthPerformance)';
}


}

/// @nodoc
abstract mixin class _$DiscountTierCopyWith<$Res> implements $DiscountTierCopyWith<$Res> {
  factory _$DiscountTierCopyWith(_DiscountTier value, $Res Function(_DiscountTier) _then) = __$DiscountTierCopyWithImpl;
@override @useResult
$Res call({
 int maximumDiscount, int monthlyDiscountRate, PreviousMonthPerformance previousMonthPerformance
});


@override $PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance;

}
/// @nodoc
class __$DiscountTierCopyWithImpl<$Res>
    implements _$DiscountTierCopyWith<$Res> {
  __$DiscountTierCopyWithImpl(this._self, this._then);

  final _DiscountTier _self;
  final $Res Function(_DiscountTier) _then;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maximumDiscount = null,Object? monthlyDiscountRate = null,Object? previousMonthPerformance = null,}) {
  return _then(_DiscountTier(
maximumDiscount: null == maximumDiscount ? _self.maximumDiscount : maximumDiscount // ignore: cast_nullable_to_non_nullable
as int,monthlyDiscountRate: null == monthlyDiscountRate ? _self.monthlyDiscountRate : monthlyDiscountRate // ignore: cast_nullable_to_non_nullable
as int,previousMonthPerformance: null == previousMonthPerformance ? _self.previousMonthPerformance : previousMonthPerformance // ignore: cast_nullable_to_non_nullable
as PreviousMonthPerformance,
  ));
}

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PreviousMonthPerformanceCopyWith<$Res> get previousMonthPerformance {
  
  return $PreviousMonthPerformanceCopyWith<$Res>(_self.previousMonthPerformance, (value) {
    return _then(_self.copyWith(previousMonthPerformance: value));
  });
}
}


/// @nodoc
mixin _$PreviousMonthPerformance {

 int get min; int? get max;
/// Create a copy of PreviousMonthPerformance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreviousMonthPerformanceCopyWith<PreviousMonthPerformance> get copyWith => _$PreviousMonthPerformanceCopyWithImpl<PreviousMonthPerformance>(this as PreviousMonthPerformance, _$identity);

  /// Serializes this PreviousMonthPerformance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousMonthPerformance&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'PreviousMonthPerformance(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $PreviousMonthPerformanceCopyWith<$Res>  {
  factory $PreviousMonthPerformanceCopyWith(PreviousMonthPerformance value, $Res Function(PreviousMonthPerformance) _then) = _$PreviousMonthPerformanceCopyWithImpl;
@useResult
$Res call({
 int min, int? max
});




}
/// @nodoc
class _$PreviousMonthPerformanceCopyWithImpl<$Res>
    implements $PreviousMonthPerformanceCopyWith<$Res> {
  _$PreviousMonthPerformanceCopyWithImpl(this._self, this._then);

  final PreviousMonthPerformance _self;
  final $Res Function(PreviousMonthPerformance) _then;

/// Create a copy of PreviousMonthPerformance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? min = null,Object? max = freezed,}) {
  return _then(_self.copyWith(
min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreviousMonthPerformance].
extension PreviousMonthPerformancePatterns on PreviousMonthPerformance {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreviousMonthPerformance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreviousMonthPerformance() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreviousMonthPerformance value)  $default,){
final _that = this;
switch (_that) {
case _PreviousMonthPerformance():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreviousMonthPerformance value)?  $default,){
final _that = this;
switch (_that) {
case _PreviousMonthPerformance() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int min,  int? max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreviousMonthPerformance() when $default != null:
return $default(_that.min,_that.max);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int min,  int? max)  $default,) {final _that = this;
switch (_that) {
case _PreviousMonthPerformance():
return $default(_that.min,_that.max);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int min,  int? max)?  $default,) {final _that = this;
switch (_that) {
case _PreviousMonthPerformance() when $default != null:
return $default(_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PreviousMonthPerformance implements PreviousMonthPerformance {
   _PreviousMonthPerformance({required this.min, this.max});
  factory _PreviousMonthPerformance.fromJson(Map<String, dynamic> json) => _$PreviousMonthPerformanceFromJson(json);

@override final  int min;
@override final  int? max;

/// Create a copy of PreviousMonthPerformance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreviousMonthPerformanceCopyWith<_PreviousMonthPerformance> get copyWith => __$PreviousMonthPerformanceCopyWithImpl<_PreviousMonthPerformance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreviousMonthPerformanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousMonthPerformance&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'PreviousMonthPerformance(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$PreviousMonthPerformanceCopyWith<$Res> implements $PreviousMonthPerformanceCopyWith<$Res> {
  factory _$PreviousMonthPerformanceCopyWith(_PreviousMonthPerformance value, $Res Function(_PreviousMonthPerformance) _then) = __$PreviousMonthPerformanceCopyWithImpl;
@override @useResult
$Res call({
 int min, int? max
});




}
/// @nodoc
class __$PreviousMonthPerformanceCopyWithImpl<$Res>
    implements _$PreviousMonthPerformanceCopyWith<$Res> {
  __$PreviousMonthPerformanceCopyWithImpl(this._self, this._then);

  final _PreviousMonthPerformance _self;
  final $Res Function(_PreviousMonthPerformance) _then;

/// Create a copy of PreviousMonthPerformance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = null,Object? max = freezed,}) {
  return _then(_PreviousMonthPerformance(
min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CardModelList {

 List<CardModel> get cards;
/// Create a copy of CardModelList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardModelListCopyWith<CardModelList> get copyWith => _$CardModelListCopyWithImpl<CardModelList>(this as CardModelList, _$identity);

  /// Serializes this CardModelList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardModelList&&const DeepCollectionEquality().equals(other.cards, cards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cards));

@override
String toString() {
  return 'CardModelList(cards: $cards)';
}


}

/// @nodoc
abstract mixin class $CardModelListCopyWith<$Res>  {
  factory $CardModelListCopyWith(CardModelList value, $Res Function(CardModelList) _then) = _$CardModelListCopyWithImpl;
@useResult
$Res call({
 List<CardModel> cards
});




}
/// @nodoc
class _$CardModelListCopyWithImpl<$Res>
    implements $CardModelListCopyWith<$Res> {
  _$CardModelListCopyWithImpl(this._self, this._then);

  final CardModelList _self;
  final $Res Function(CardModelList) _then;

/// Create a copy of CardModelList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cards = null,}) {
  return _then(_self.copyWith(
cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CardModelList].
extension CardModelListPatterns on CardModelList {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardModelList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardModelList() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardModelList value)  $default,){
final _that = this;
switch (_that) {
case _CardModelList():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardModelList value)?  $default,){
final _that = this;
switch (_that) {
case _CardModelList() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CardModel> cards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardModelList() when $default != null:
return $default(_that.cards);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CardModel> cards)  $default,) {final _that = this;
switch (_that) {
case _CardModelList():
return $default(_that.cards);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CardModel> cards)?  $default,) {final _that = this;
switch (_that) {
case _CardModelList() when $default != null:
return $default(_that.cards);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardModelList implements CardModelList {
   _CardModelList({required final  List<CardModel> cards}): _cards = cards;
  factory _CardModelList.fromJson(Map<String, dynamic> json) => _$CardModelListFromJson(json);

 final  List<CardModel> _cards;
@override List<CardModel> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}


/// Create a copy of CardModelList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardModelListCopyWith<_CardModelList> get copyWith => __$CardModelListCopyWithImpl<_CardModelList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardModelListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardModelList&&const DeepCollectionEquality().equals(other._cards, _cards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards));

@override
String toString() {
  return 'CardModelList(cards: $cards)';
}


}

/// @nodoc
abstract mixin class _$CardModelListCopyWith<$Res> implements $CardModelListCopyWith<$Res> {
  factory _$CardModelListCopyWith(_CardModelList value, $Res Function(_CardModelList) _then) = __$CardModelListCopyWithImpl;
@override @useResult
$Res call({
 List<CardModel> cards
});




}
/// @nodoc
class __$CardModelListCopyWithImpl<$Res>
    implements _$CardModelListCopyWith<$Res> {
  __$CardModelListCopyWithImpl(this._self, this._then);

  final _CardModelList _self;
  final $Res Function(_CardModelList) _then;

/// Create a copy of CardModelList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cards = null,}) {
  return _then(_CardModelList(
cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<CardModel>,
  ));
}


}

// dart format on
