import 'package:freezed_annotation/freezed_annotation.dart';

part 'fav_dish_model.freezed.dart';
part 'fav_dish_model.g.dart';

@freezed
class FavouriteDishModel with _$FavouriteDishModel {
  const factory FavouriteDishModel(
      {String? id,
      String? title,
      String? difficulty,
      String? image}) = _FavouriteDishModel;

  factory FavouriteDishModel.fromJson(Map<String, dynamic> json) =>
      _$FavouriteDishModelFromJson(json);
}
