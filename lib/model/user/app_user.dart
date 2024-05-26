// ignore_for_file: invalid_annotation_target

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
    @JsonKey(
      name: "\$favourite",
    )
    List<ProductModel>? favouriteDishes,
    @JsonKey(name: "\$databaseId") String? databaseId,
    @JsonKey(name: "\$collectionId") String? collectionId,
  }) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
