import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/game_type.dart';
import '../../../core/enums/gender.dart';
import '../../../core/enums/player_level.dart';
import '../../../core/enums/session_status.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
@freezed
abstract class SessionModel with _$SessionModel {
  const factory SessionModel({
    // Identity
    required String id,
    required String organizerId,

    // Activity
    required GameType gameType,
    required String gameName,
    required String coverImage,

    // Organizer
    required String organizerName,
    required String organizerImage,
    required double organizerRating,

    // Location
    required String city,
    required String district,
    required String venueName,
    required double latitude,
    required double longitude,

    // Schedule
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,

    // Players
    required int currentPlayers,
    required int maxPlayers,

    // Session
    required PlayerLevel level,
    required Gender gender,
    required double price,
    required String description,
    required SessionStatus status,

    // Settings
    @Default(false) bool allowGuest,
    @Default(false) bool requiresApproval,
    @Default(false) bool hasReferee,
    @Default(false) bool hasEquipment,
    @Default(true) bool chatEnabled,

    // Metadata
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);
}
