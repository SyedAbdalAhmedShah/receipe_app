// ignore_for_file: invalid_annotation_target

import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    String? userId,
    String? userName,
    String? createdAt,
    @JsonKey(name: ServerStrings.docId) String? documentId,
    String? profileUrl,
    @JsonKey(name: ServerStrings.favourite) List<ProductModel>? favouriteDishes,
    @JsonKey(name: ServerStrings.databaseId) String? databaseId,
    @JsonKey(name: ServerStrings.collectionId) String? collectionId,
  }) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}

favourtireFromJson(dynamic map) {
  log("favourtireFromJson =========> ${map.runtimeType} , $map");
}
