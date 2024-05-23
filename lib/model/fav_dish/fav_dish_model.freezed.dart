// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fav_dish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteDishModel _$FavouriteDishModelFromJson(Map<String, dynamic> json) {
  return _FavouriteDishModel.fromJson(json);
}

/// @nodoc
mixin _$FavouriteDishModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteDishModelCopyWith<FavouriteDishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteDishModelCopyWith<$Res> {
  factory $FavouriteDishModelCopyWith(
          FavouriteDishModel value, $Res Function(FavouriteDishModel) then) =
      _$FavouriteDishModelCopyWithImpl<$Res, FavouriteDishModel>;
  @useResult
  $Res call({String? id, String? title, String? difficulty, String? image});
}

/// @nodoc
class _$FavouriteDishModelCopyWithImpl<$Res, $Val extends FavouriteDishModel>
    implements $FavouriteDishModelCopyWith<$Res> {
  _$FavouriteDishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? difficulty = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteDishModelImplCopyWith<$Res>
    implements $FavouriteDishModelCopyWith<$Res> {
  factory _$$FavouriteDishModelImplCopyWith(_$FavouriteDishModelImpl value,
          $Res Function(_$FavouriteDishModelImpl) then) =
      __$$FavouriteDishModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? difficulty, String? image});
}

/// @nodoc
class __$$FavouriteDishModelImplCopyWithImpl<$Res>
    extends _$FavouriteDishModelCopyWithImpl<$Res, _$FavouriteDishModelImpl>
    implements _$$FavouriteDishModelImplCopyWith<$Res> {
  __$$FavouriteDishModelImplCopyWithImpl(_$FavouriteDishModelImpl _value,
      $Res Function(_$FavouriteDishModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? difficulty = freezed,
    Object? image = freezed,
  }) {
    return _then(_$FavouriteDishModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteDishModelImpl implements _FavouriteDishModel {
  const _$FavouriteDishModelImpl(
      {this.id, this.title, this.difficulty, this.image});

  factory _$FavouriteDishModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteDishModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? difficulty;
  @override
  final String? image;

  @override
  String toString() {
    return 'FavouriteDishModel(id: $id, title: $title, difficulty: $difficulty, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteDishModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, difficulty, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteDishModelImplCopyWith<_$FavouriteDishModelImpl> get copyWith =>
      __$$FavouriteDishModelImplCopyWithImpl<_$FavouriteDishModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteDishModelImplToJson(
      this,
    );
  }
}

abstract class _FavouriteDishModel implements FavouriteDishModel {
  const factory _FavouriteDishModel(
      {final String? id,
      final String? title,
      final String? difficulty,
      final String? image}) = _$FavouriteDishModelImpl;

  factory _FavouriteDishModel.fromJson(Map<String, dynamic> json) =
      _$FavouriteDishModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get difficulty;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteDishModelImplCopyWith<_$FavouriteDishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
