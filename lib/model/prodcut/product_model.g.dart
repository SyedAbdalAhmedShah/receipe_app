// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['recipeId'] as String?,
      title: json['receipeName'] as String?,
      difficulty: json['difficulty'] as String?,
      image: json['recipeImage'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'recipeId': instance.id,
      'receipeName': instance.title,
      'difficulty': instance.difficulty,
      'recipeImage': instance.image,
    };
