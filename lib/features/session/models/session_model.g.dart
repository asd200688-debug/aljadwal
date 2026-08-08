// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionModel _$SessionModelFromJson(Map<String, dynamic> json) =>
    _SessionModel(
      id: json['id'] as String,
      organizerId: json['organizerId'] as String,
      gameType: $enumDecode(_$GameTypeEnumMap, json['gameType']),
      gameName: json['gameName'] as String,
      coverImage: json['coverImage'] as String,
      organizerName: json['organizerName'] as String,
      organizerImage: json['organizerImage'] as String,
      organizerRating: (json['organizerRating'] as num).toDouble(),
      city: json['city'] as String,
      district: json['district'] as String,
      venueName: json['venueName'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      currentPlayers: (json['currentPlayers'] as num).toInt(),
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      level: $enumDecode(_$PlayerLevelEnumMap, json['level']),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      status: $enumDecode(_$SessionStatusEnumMap, json['status']),
      allowGuest: json['allowGuest'] as bool? ?? false,
      requiresApproval: json['requiresApproval'] as bool? ?? false,
      hasReferee: json['hasReferee'] as bool? ?? false,
      hasEquipment: json['hasEquipment'] as bool? ?? false,
      chatEnabled: json['chatEnabled'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SessionModelToJson(_SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizerId': instance.organizerId,
      'gameType': _$GameTypeEnumMap[instance.gameType]!,
      'gameName': instance.gameName,
      'coverImage': instance.coverImage,
      'organizerName': instance.organizerName,
      'organizerImage': instance.organizerImage,
      'organizerRating': instance.organizerRating,
      'city': instance.city,
      'district': instance.district,
      'venueName': instance.venueName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'currentPlayers': instance.currentPlayers,
      'maxPlayers': instance.maxPlayers,
      'level': _$PlayerLevelEnumMap[instance.level]!,
      'gender': _$GenderEnumMap[instance.gender]!,
      'price': instance.price,
      'description': instance.description,
      'status': _$SessionStatusEnumMap[instance.status]!,
      'allowGuest': instance.allowGuest,
      'requiresApproval': instance.requiresApproval,
      'hasReferee': instance.hasReferee,
      'hasEquipment': instance.hasEquipment,
      'chatEnabled': instance.chatEnabled,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$GameTypeEnumMap = {
  GameType.football: 'football',
  GameType.padel: 'padel',
  GameType.basketball: 'basketball',
  GameType.volleyball: 'volleyball',
  GameType.handball: 'handball',
  GameType.tennis: 'tennis',
  GameType.tableTennis: 'tableTennis',
  GameType.cricket: 'cricket',
  GameType.bowling: 'bowling',
  GameType.billiards: 'billiards',
  GameType.hiking: 'hiking',
  GameType.cycling: 'cycling',
  GameType.running: 'running',
  GameType.walking: 'walking',
  GameType.swimming: 'swimming',
  GameType.horseRiding: 'horseRiding',
  GameType.gym: 'gym',
  GameType.yoga: 'yoga',
  GameType.restaurants: 'restaurants',
  GameType.cafes: 'cafes',
};

const _$PlayerLevelEnumMap = {
  PlayerLevel.beginner: 'beginner',
  PlayerLevel.intermediate: 'intermediate',
  PlayerLevel.advanced: 'advanced',
  PlayerLevel.professional: 'professional',
};

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.mixed: 'mixed',
};

const _$SessionStatusEnumMap = {
  SessionStatus.draft: 'draft',
  SessionStatus.published: 'published',
  SessionStatus.open: 'open',
  SessionStatus.full: 'full',
  SessionStatus.inProgress: 'inProgress',
  SessionStatus.completed: 'completed',
  SessionStatus.cancelled: 'cancelled',
};
