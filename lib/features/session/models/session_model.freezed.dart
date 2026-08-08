// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionModel {

// Identity
 String get id; String get organizerId;// Activity
 GameType get gameType; String get gameName; String get coverImage;// Organizer
 String get organizerName; String get organizerImage; double get organizerRating;// Location
 String get city; String get district; String get venueName; double get latitude; double get longitude;// Schedule
 DateTime get date; DateTime get startTime; DateTime get endTime;// Players
 int get currentPlayers; int get maxPlayers;// Session
 PlayerLevel get level; Gender get gender; double get price; String get description; SessionStatus get status;// Settings
 bool get allowGuest; bool get requiresApproval; bool get hasReferee; bool get hasEquipment; bool get chatEnabled;// Metadata
 DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of SessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionModelCopyWith<SessionModel> get copyWith => _$SessionModelCopyWithImpl<SessionModel>(this as SessionModel, _$identity);

  /// Serializes this SessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId)&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.gameName, gameName) || other.gameName == gameName)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.organizerImage, organizerImage) || other.organizerImage == organizerImage)&&(identical(other.organizerRating, organizerRating) || other.organizerRating == organizerRating)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.currentPlayers, currentPlayers) || other.currentPlayers == currentPlayers)&&(identical(other.maxPlayers, maxPlayers) || other.maxPlayers == maxPlayers)&&(identical(other.level, level) || other.level == level)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.allowGuest, allowGuest) || other.allowGuest == allowGuest)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.hasReferee, hasReferee) || other.hasReferee == hasReferee)&&(identical(other.hasEquipment, hasEquipment) || other.hasEquipment == hasEquipment)&&(identical(other.chatEnabled, chatEnabled) || other.chatEnabled == chatEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizerId,gameType,gameName,coverImage,organizerName,organizerImage,organizerRating,city,district,venueName,latitude,longitude,date,startTime,endTime,currentPlayers,maxPlayers,level,gender,price,description,status,allowGuest,requiresApproval,hasReferee,hasEquipment,chatEnabled,createdAt,updatedAt]);

@override
String toString() {
  return 'SessionModel(id: $id, organizerId: $organizerId, gameType: $gameType, gameName: $gameName, coverImage: $coverImage, organizerName: $organizerName, organizerImage: $organizerImage, organizerRating: $organizerRating, city: $city, district: $district, venueName: $venueName, latitude: $latitude, longitude: $longitude, date: $date, startTime: $startTime, endTime: $endTime, currentPlayers: $currentPlayers, maxPlayers: $maxPlayers, level: $level, gender: $gender, price: $price, description: $description, status: $status, allowGuest: $allowGuest, requiresApproval: $requiresApproval, hasReferee: $hasReferee, hasEquipment: $hasEquipment, chatEnabled: $chatEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SessionModelCopyWith<$Res>  {
  factory $SessionModelCopyWith(SessionModel value, $Res Function(SessionModel) _then) = _$SessionModelCopyWithImpl;
@useResult
$Res call({
 String id, String organizerId, GameType gameType, String gameName, String coverImage, String organizerName, String organizerImage, double organizerRating, String city, String district, String venueName, double latitude, double longitude, DateTime date, DateTime startTime, DateTime endTime, int currentPlayers, int maxPlayers, PlayerLevel level, Gender gender, double price, String description, SessionStatus status, bool allowGuest, bool requiresApproval, bool hasReferee, bool hasEquipment, bool chatEnabled, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$SessionModelCopyWithImpl<$Res>
    implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._self, this._then);

  final SessionModel _self;
  final $Res Function(SessionModel) _then;

/// Create a copy of SessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizerId = null,Object? gameType = null,Object? gameName = null,Object? coverImage = null,Object? organizerName = null,Object? organizerImage = null,Object? organizerRating = null,Object? city = null,Object? district = null,Object? venueName = null,Object? latitude = null,Object? longitude = null,Object? date = null,Object? startTime = null,Object? endTime = null,Object? currentPlayers = null,Object? maxPlayers = null,Object? level = null,Object? gender = null,Object? price = null,Object? description = null,Object? status = null,Object? allowGuest = null,Object? requiresApproval = null,Object? hasReferee = null,Object? hasEquipment = null,Object? chatEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as GameType,gameName: null == gameName ? _self.gameName : gameName // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizerImage: null == organizerImage ? _self.organizerImage : organizerImage // ignore: cast_nullable_to_non_nullable
as String,organizerRating: null == organizerRating ? _self.organizerRating : organizerRating // ignore: cast_nullable_to_non_nullable
as double,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,currentPlayers: null == currentPlayers ? _self.currentPlayers : currentPlayers // ignore: cast_nullable_to_non_nullable
as int,maxPlayers: null == maxPlayers ? _self.maxPlayers : maxPlayers // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as PlayerLevel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,allowGuest: null == allowGuest ? _self.allowGuest : allowGuest // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,hasReferee: null == hasReferee ? _self.hasReferee : hasReferee // ignore: cast_nullable_to_non_nullable
as bool,hasEquipment: null == hasEquipment ? _self.hasEquipment : hasEquipment // ignore: cast_nullable_to_non_nullable
as bool,chatEnabled: null == chatEnabled ? _self.chatEnabled : chatEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionModel].
extension SessionModelPatterns on SessionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionModel value)  $default,){
final _that = this;
switch (_that) {
case _SessionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionModel value)?  $default,){
final _that = this;
switch (_that) {
case _SessionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String organizerId,  GameType gameType,  String gameName,  String coverImage,  String organizerName,  String organizerImage,  double organizerRating,  String city,  String district,  String venueName,  double latitude,  double longitude,  DateTime date,  DateTime startTime,  DateTime endTime,  int currentPlayers,  int maxPlayers,  PlayerLevel level,  Gender gender,  double price,  String description,  SessionStatus status,  bool allowGuest,  bool requiresApproval,  bool hasReferee,  bool hasEquipment,  bool chatEnabled,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionModel() when $default != null:
return $default(_that.id,_that.organizerId,_that.gameType,_that.gameName,_that.coverImage,_that.organizerName,_that.organizerImage,_that.organizerRating,_that.city,_that.district,_that.venueName,_that.latitude,_that.longitude,_that.date,_that.startTime,_that.endTime,_that.currentPlayers,_that.maxPlayers,_that.level,_that.gender,_that.price,_that.description,_that.status,_that.allowGuest,_that.requiresApproval,_that.hasReferee,_that.hasEquipment,_that.chatEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String organizerId,  GameType gameType,  String gameName,  String coverImage,  String organizerName,  String organizerImage,  double organizerRating,  String city,  String district,  String venueName,  double latitude,  double longitude,  DateTime date,  DateTime startTime,  DateTime endTime,  int currentPlayers,  int maxPlayers,  PlayerLevel level,  Gender gender,  double price,  String description,  SessionStatus status,  bool allowGuest,  bool requiresApproval,  bool hasReferee,  bool hasEquipment,  bool chatEnabled,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SessionModel():
return $default(_that.id,_that.organizerId,_that.gameType,_that.gameName,_that.coverImage,_that.organizerName,_that.organizerImage,_that.organizerRating,_that.city,_that.district,_that.venueName,_that.latitude,_that.longitude,_that.date,_that.startTime,_that.endTime,_that.currentPlayers,_that.maxPlayers,_that.level,_that.gender,_that.price,_that.description,_that.status,_that.allowGuest,_that.requiresApproval,_that.hasReferee,_that.hasEquipment,_that.chatEnabled,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String organizerId,  GameType gameType,  String gameName,  String coverImage,  String organizerName,  String organizerImage,  double organizerRating,  String city,  String district,  String venueName,  double latitude,  double longitude,  DateTime date,  DateTime startTime,  DateTime endTime,  int currentPlayers,  int maxPlayers,  PlayerLevel level,  Gender gender,  double price,  String description,  SessionStatus status,  bool allowGuest,  bool requiresApproval,  bool hasReferee,  bool hasEquipment,  bool chatEnabled,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SessionModel() when $default != null:
return $default(_that.id,_that.organizerId,_that.gameType,_that.gameName,_that.coverImage,_that.organizerName,_that.organizerImage,_that.organizerRating,_that.city,_that.district,_that.venueName,_that.latitude,_that.longitude,_that.date,_that.startTime,_that.endTime,_that.currentPlayers,_that.maxPlayers,_that.level,_that.gender,_that.price,_that.description,_that.status,_that.allowGuest,_that.requiresApproval,_that.hasReferee,_that.hasEquipment,_that.chatEnabled,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionModel implements SessionModel {
  const _SessionModel({required this.id, required this.organizerId, required this.gameType, required this.gameName, required this.coverImage, required this.organizerName, required this.organizerImage, required this.organizerRating, required this.city, required this.district, required this.venueName, required this.latitude, required this.longitude, required this.date, required this.startTime, required this.endTime, required this.currentPlayers, required this.maxPlayers, required this.level, required this.gender, required this.price, required this.description, required this.status, this.allowGuest = false, this.requiresApproval = false, this.hasReferee = false, this.hasEquipment = false, this.chatEnabled = true, required this.createdAt, required this.updatedAt});
  factory _SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);

// Identity
@override final  String id;
@override final  String organizerId;
// Activity
@override final  GameType gameType;
@override final  String gameName;
@override final  String coverImage;
// Organizer
@override final  String organizerName;
@override final  String organizerImage;
@override final  double organizerRating;
// Location
@override final  String city;
@override final  String district;
@override final  String venueName;
@override final  double latitude;
@override final  double longitude;
// Schedule
@override final  DateTime date;
@override final  DateTime startTime;
@override final  DateTime endTime;
// Players
@override final  int currentPlayers;
@override final  int maxPlayers;
// Session
@override final  PlayerLevel level;
@override final  Gender gender;
@override final  double price;
@override final  String description;
@override final  SessionStatus status;
// Settings
@override@JsonKey() final  bool allowGuest;
@override@JsonKey() final  bool requiresApproval;
@override@JsonKey() final  bool hasReferee;
@override@JsonKey() final  bool hasEquipment;
@override@JsonKey() final  bool chatEnabled;
// Metadata
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of SessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionModelCopyWith<_SessionModel> get copyWith => __$SessionModelCopyWithImpl<_SessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId)&&(identical(other.gameType, gameType) || other.gameType == gameType)&&(identical(other.gameName, gameName) || other.gameName == gameName)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.organizerImage, organizerImage) || other.organizerImage == organizerImage)&&(identical(other.organizerRating, organizerRating) || other.organizerRating == organizerRating)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.currentPlayers, currentPlayers) || other.currentPlayers == currentPlayers)&&(identical(other.maxPlayers, maxPlayers) || other.maxPlayers == maxPlayers)&&(identical(other.level, level) || other.level == level)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.allowGuest, allowGuest) || other.allowGuest == allowGuest)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.hasReferee, hasReferee) || other.hasReferee == hasReferee)&&(identical(other.hasEquipment, hasEquipment) || other.hasEquipment == hasEquipment)&&(identical(other.chatEnabled, chatEnabled) || other.chatEnabled == chatEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,organizerId,gameType,gameName,coverImage,organizerName,organizerImage,organizerRating,city,district,venueName,latitude,longitude,date,startTime,endTime,currentPlayers,maxPlayers,level,gender,price,description,status,allowGuest,requiresApproval,hasReferee,hasEquipment,chatEnabled,createdAt,updatedAt]);

@override
String toString() {
  return 'SessionModel(id: $id, organizerId: $organizerId, gameType: $gameType, gameName: $gameName, coverImage: $coverImage, organizerName: $organizerName, organizerImage: $organizerImage, organizerRating: $organizerRating, city: $city, district: $district, venueName: $venueName, latitude: $latitude, longitude: $longitude, date: $date, startTime: $startTime, endTime: $endTime, currentPlayers: $currentPlayers, maxPlayers: $maxPlayers, level: $level, gender: $gender, price: $price, description: $description, status: $status, allowGuest: $allowGuest, requiresApproval: $requiresApproval, hasReferee: $hasReferee, hasEquipment: $hasEquipment, chatEnabled: $chatEnabled, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SessionModelCopyWith<$Res> implements $SessionModelCopyWith<$Res> {
  factory _$SessionModelCopyWith(_SessionModel value, $Res Function(_SessionModel) _then) = __$SessionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String organizerId, GameType gameType, String gameName, String coverImage, String organizerName, String organizerImage, double organizerRating, String city, String district, String venueName, double latitude, double longitude, DateTime date, DateTime startTime, DateTime endTime, int currentPlayers, int maxPlayers, PlayerLevel level, Gender gender, double price, String description, SessionStatus status, bool allowGuest, bool requiresApproval, bool hasReferee, bool hasEquipment, bool chatEnabled, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$SessionModelCopyWithImpl<$Res>
    implements _$SessionModelCopyWith<$Res> {
  __$SessionModelCopyWithImpl(this._self, this._then);

  final _SessionModel _self;
  final $Res Function(_SessionModel) _then;

/// Create a copy of SessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizerId = null,Object? gameType = null,Object? gameName = null,Object? coverImage = null,Object? organizerName = null,Object? organizerImage = null,Object? organizerRating = null,Object? city = null,Object? district = null,Object? venueName = null,Object? latitude = null,Object? longitude = null,Object? date = null,Object? startTime = null,Object? endTime = null,Object? currentPlayers = null,Object? maxPlayers = null,Object? level = null,Object? gender = null,Object? price = null,Object? description = null,Object? status = null,Object? allowGuest = null,Object? requiresApproval = null,Object? hasReferee = null,Object? hasEquipment = null,Object? chatEnabled = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SessionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,gameType: null == gameType ? _self.gameType : gameType // ignore: cast_nullable_to_non_nullable
as GameType,gameName: null == gameName ? _self.gameName : gameName // ignore: cast_nullable_to_non_nullable
as String,coverImage: null == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizerImage: null == organizerImage ? _self.organizerImage : organizerImage // ignore: cast_nullable_to_non_nullable
as String,organizerRating: null == organizerRating ? _self.organizerRating : organizerRating // ignore: cast_nullable_to_non_nullable
as double,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,currentPlayers: null == currentPlayers ? _self.currentPlayers : currentPlayers // ignore: cast_nullable_to_non_nullable
as int,maxPlayers: null == maxPlayers ? _self.maxPlayers : maxPlayers // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as PlayerLevel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,allowGuest: null == allowGuest ? _self.allowGuest : allowGuest // ignore: cast_nullable_to_non_nullable
as bool,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,hasReferee: null == hasReferee ? _self.hasReferee : hasReferee // ignore: cast_nullable_to_non_nullable
as bool,hasEquipment: null == hasEquipment ? _self.hasEquipment : hasEquipment // ignore: cast_nullable_to_non_nullable
as bool,chatEnabled: null == chatEnabled ? _self.chatEnabled : chatEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
