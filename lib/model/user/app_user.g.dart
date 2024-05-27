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
      documentId: json['documentId'] as String?,
      profileUrl: json['profileUrl'] as String?,
      favouriteDishes: (json['favourite'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      databaseId: json[r'$databaseId'] as String?,
      collectionId: json[r'$collectionId'] as String?,
    );

Map<String, dynamic> _$$AppUserImplToJson(_$AppUserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'createdAt': instance.createdAt,
      'documentId': instance.documentId,
      'profileUrl': instance.profileUrl,
      'favourite': instance.favouriteDishes,
      r'$databaseId': instance.databaseId,
      r'$collectionId': instance.collectionId,
    };
