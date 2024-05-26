// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: ServerStrings.docId)
  String? get documentId => throw _privateConstructorUsedError;
  String? get profileUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
  List<ProductModel>? get favouriteDishes => throw _privateConstructorUsedError;
  @JsonKey(name: ServerStrings.databaseId)
  String? get databaseId => throw _privateConstructorUsedError;
  @JsonKey(name: ServerStrings.collectionId)
  String? get collectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String? userId,
      String? userName,
      String? createdAt,
      @JsonKey(name: ServerStrings.docId) String? documentId,
      String? profileUrl,
      @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
      List<ProductModel>? favouriteDishes,
      @JsonKey(name: ServerStrings.databaseId) String? databaseId,
      @JsonKey(name: ServerStrings.collectionId) String? collectionId});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
    Object? profileUrl = freezed,
    Object? favouriteDishes = freezed,
    Object? databaseId = freezed,
    Object? collectionId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favouriteDishes: freezed == favouriteDishes
          ? _value.favouriteDishes
          : favouriteDishes // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUserImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUserImplCopyWith(
          _$AppUserImpl value, $Res Function(_$AppUserImpl) then) =
      __$$AppUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? userName,
      String? createdAt,
      @JsonKey(name: ServerStrings.docId) String? documentId,
      String? profileUrl,
      @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
      List<ProductModel>? favouriteDishes,
      @JsonKey(name: ServerStrings.databaseId) String? databaseId,
      @JsonKey(name: ServerStrings.collectionId) String? collectionId});
}

/// @nodoc
class __$$AppUserImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUserImpl>
    implements _$$AppUserImplCopyWith<$Res> {
  __$$AppUserImplCopyWithImpl(
      _$AppUserImpl _value, $Res Function(_$AppUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
    Object? profileUrl = freezed,
    Object? favouriteDishes = freezed,
    Object? databaseId = freezed,
    Object? collectionId = freezed,
  }) {
    return _then(_$AppUserImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favouriteDishes: freezed == favouriteDishes
          ? _value._favouriteDishes
          : favouriteDishes // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUserImpl implements _AppUser {
  const _$AppUserImpl(
      {this.userId,
      this.userName,
      this.createdAt,
      @JsonKey(name: ServerStrings.docId) this.documentId,
      this.profileUrl,
      @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
      final List<ProductModel>? favouriteDishes,
      @JsonKey(name: ServerStrings.databaseId) this.databaseId,
      @JsonKey(name: ServerStrings.collectionId) this.collectionId})
      : _favouriteDishes = favouriteDishes;

  factory _$AppUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUserImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? createdAt;
  @override
  @JsonKey(name: ServerStrings.docId)
  final String? documentId;
  @override
  final String? profileUrl;
  final List<ProductModel>? _favouriteDishes;
  @override
  @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
  List<ProductModel>? get favouriteDishes {
    final value = _favouriteDishes;
    if (value == null) return null;
    if (_favouriteDishes is EqualUnmodifiableListView) return _favouriteDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: ServerStrings.databaseId)
  final String? databaseId;
  @override
  @JsonKey(name: ServerStrings.collectionId)
  final String? collectionId;

  @override
  String toString() {
    return 'AppUser(userId: $userId, userName: $userName, createdAt: $createdAt, documentId: $documentId, profileUrl: $profileUrl, favouriteDishes: $favouriteDishes, databaseId: $databaseId, collectionId: $collectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            const DeepCollectionEquality()
                .equals(other._favouriteDishes, _favouriteDishes) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      userName,
      createdAt,
      documentId,
      profileUrl,
      const DeepCollectionEquality().hash(_favouriteDishes),
      databaseId,
      collectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      __$$AppUserImplCopyWithImpl<_$AppUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUserImplToJson(
      this,
    );
  }
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {final String? userId,
      final String? userName,
      final String? createdAt,
      @JsonKey(name: ServerStrings.docId) final String? documentId,
      final String? profileUrl,
      @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
      final List<ProductModel>? favouriteDishes,
      @JsonKey(name: ServerStrings.databaseId) final String? databaseId,
      @JsonKey(name: ServerStrings.collectionId)
      final String? collectionId}) = _$AppUserImpl;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$AppUserImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get createdAt;
  @override
  @JsonKey(name: ServerStrings.docId)
  String? get documentId;
  @override
  String? get profileUrl;
  @override
  @JsonKey(fromJson: favourtireFromJson, name: ServerStrings.favourite)
  List<ProductModel>? get favouriteDishes;
  @override
  @JsonKey(name: ServerStrings.databaseId)
  String? get databaseId;
  @override
  @JsonKey(name: ServerStrings.collectionId)
  String? get collectionId;
  @override
  @JsonKey(ignore: true)
  _$$AppUserImplCopyWith<_$AppUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
