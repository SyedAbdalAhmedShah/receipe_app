// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    String? userId,
    String? userName,
    String? createdAt,
    String? profileUrl,
    @JsonKey(name: "\$databaseId") String? databaseId,
    @JsonKey(name: "\$collectionId") String? collectionId,
  }) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
