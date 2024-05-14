// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserImpl _$$AppUserImplFromJson(Map<String, dynamic> json) =>
    _$AppUserImpl(
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      createdAt: json['createdAt'] as String?,
      profileUrl: json['profileUrl'] as String?,
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'createdAt': instance.createdAt,
      'profileUrl': instance.profileUrl,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
    };
