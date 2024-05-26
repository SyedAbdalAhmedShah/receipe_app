// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipe_app/constants/server_strings.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel(
      {@JsonKey(name: ServerStrings.recipeId) String? id,
      @JsonKey(name: ServerStrings.receipeName) String? title,
      String? difficulty,
      @JsonKey(name: ServerStrings.recipeImage) String? image}) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
