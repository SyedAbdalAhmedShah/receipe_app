// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourtire_dish_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavourtireDishEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel favDish) markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel favDish)? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel favDish)? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavourtireDishEventCopyWith<$Res> {
  factory $FavourtireDishEventCopyWith(
          FavourtireDishEvent value, $Res Function(FavourtireDishEvent) then) =
      _$FavourtireDishEventCopyWithImpl<$Res, FavourtireDishEvent>;
}

/// @nodoc
class _$FavourtireDishEventCopyWithImpl<$Res, $Val extends FavourtireDishEvent>
    implements $FavourtireDishEventCopyWith<$Res> {
  _$FavourtireDishEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FavourtireDishEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FavourtireDishEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel favDish) markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel favDish)? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel favDish)? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavourtireDishEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MarkAsFavourtireImplCopyWith<$Res> {
  factory _$$MarkAsFavourtireImplCopyWith(_$MarkAsFavourtireImpl value,
          $Res Function(_$MarkAsFavourtireImpl) then) =
      __$$MarkAsFavourtireImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel favDish});

  $ProductModelCopyWith<$Res> get favDish;
}

/// @nodoc
class __$$MarkAsFavourtireImplCopyWithImpl<$Res>
    extends _$FavourtireDishEventCopyWithImpl<$Res, _$MarkAsFavourtireImpl>
    implements _$$MarkAsFavourtireImplCopyWith<$Res> {
  __$$MarkAsFavourtireImplCopyWithImpl(_$MarkAsFavourtireImpl _value,
      $Res Function(_$MarkAsFavourtireImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favDish = null,
  }) {
    return _then(_$MarkAsFavourtireImpl(
      favDish: null == favDish
          ? _value.favDish
          : favDish // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get favDish {
    return $ProductModelCopyWith<$Res>(_value.favDish, (value) {
      return _then(_value.copyWith(favDish: value));
    });
  }
}

/// @nodoc

class _$MarkAsFavourtireImpl implements _MarkAsFavourtire {
  const _$MarkAsFavourtireImpl({required this.favDish});

  @override
  final ProductModel favDish;

  @override
  String toString() {
    return 'FavourtireDishEvent.markAsFavourtire(favDish: $favDish)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsFavourtireImpl &&
            (identical(other.favDish, favDish) || other.favDish == favDish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favDish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsFavourtireImplCopyWith<_$MarkAsFavourtireImpl> get copyWith =>
      __$$MarkAsFavourtireImplCopyWithImpl<_$MarkAsFavourtireImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel favDish) markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return markAsFavourtire(favDish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel favDish)? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return markAsFavourtire?.call(favDish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel favDish)? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (markAsFavourtire != null) {
      return markAsFavourtire(favDish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return markAsFavourtire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return markAsFavourtire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (markAsFavourtire != null) {
      return markAsFavourtire(this);
    }
    return orElse();
  }
}

abstract class _MarkAsFavourtire implements FavourtireDishEvent {
  const factory _MarkAsFavourtire({required final ProductModel favDish}) =
      _$MarkAsFavourtireImpl;

  ProductModel get favDish;
  @JsonKey(ignore: true)
  _$$MarkAsFavourtireImplCopyWith<_$MarkAsFavourtireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsUnFavourtireImplCopyWith<$Res> {
  factory _$$MarkAsUnFavourtireImplCopyWith(_$MarkAsUnFavourtireImpl value,
          $Res Function(_$MarkAsUnFavourtireImpl) then) =
      __$$MarkAsUnFavourtireImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsUnFavourtireImplCopyWithImpl<$Res>
    extends _$FavourtireDishEventCopyWithImpl<$Res, _$MarkAsUnFavourtireImpl>
    implements _$$MarkAsUnFavourtireImplCopyWith<$Res> {
  __$$MarkAsUnFavourtireImplCopyWithImpl(_$MarkAsUnFavourtireImpl _value,
      $Res Function(_$MarkAsUnFavourtireImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsUnFavourtireImpl implements _MarkAsUnFavourtire {
  const _$MarkAsUnFavourtireImpl();

  @override
  String toString() {
    return 'FavourtireDishEvent.markAsUnFavourtire()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAsUnFavourtireImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductModel favDish) markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return markAsUnFavourtire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductModel favDish)? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return markAsUnFavourtire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductModel favDish)? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (markAsUnFavourtire != null) {
      return markAsUnFavourtire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return markAsUnFavourtire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return markAsUnFavourtire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (markAsUnFavourtire != null) {
      return markAsUnFavourtire(this);
    }
    return orElse();
  }
}

abstract class _MarkAsUnFavourtire implements FavourtireDishEvent {
  const factory _MarkAsUnFavourtire() = _$MarkAsUnFavourtireImpl;
}

/// @nodoc
mixin _$FavourtireDishState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavourtireDishStateCopyWith<$Res> {
  factory $FavourtireDishStateCopyWith(
          FavourtireDishState value, $Res Function(FavourtireDishState) then) =
      _$FavourtireDishStateCopyWithImpl<$Res, FavourtireDishState>;
}

/// @nodoc
class _$FavourtireDishStateCopyWithImpl<$Res, $Val extends FavourtireDishState>
    implements $FavourtireDishStateCopyWith<$Res> {
  _$FavourtireDishStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavourtireDishStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavourtireDishState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavourtireDishState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$FavourtireDishStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'FavourtireDishState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements FavourtireDishState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$FavourtireDishStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureStateImpl implements _FailureState {
  const _$FailureStateImpl();

  @override
  String toString() {
    return 'FavourtireDishState.failureState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) {
    return failureState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) {
    return failureState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements FavourtireDishState {
  const factory _FailureState() = _$FailureStateImpl;
}

/// @nodoc
abstract class _$$MarkAsUnfavourtireStateImplCopyWith<$Res> {
  factory _$$MarkAsUnfavourtireStateImplCopyWith(
          _$MarkAsUnfavourtireStateImpl value,
          $Res Function(_$MarkAsUnfavourtireStateImpl) then) =
      __$$MarkAsUnfavourtireStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsUnfavourtireStateImplCopyWithImpl<$Res>
    extends _$FavourtireDishStateCopyWithImpl<$Res,
        _$MarkAsUnfavourtireStateImpl>
    implements _$$MarkAsUnfavourtireStateImplCopyWith<$Res> {
  __$$MarkAsUnfavourtireStateImplCopyWithImpl(
      _$MarkAsUnfavourtireStateImpl _value,
      $Res Function(_$MarkAsUnfavourtireStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsUnfavourtireStateImpl implements _MarkAsUnfavourtireState {
  const _$MarkAsUnfavourtireStateImpl();

  @override
  String toString() {
    return 'FavourtireDishState.markAsUnfavourtireState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsUnfavourtireStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) {
    return markAsUnfavourtireState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) {
    return markAsUnfavourtireState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (markAsUnfavourtireState != null) {
      return markAsUnfavourtireState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) {
    return markAsUnfavourtireState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) {
    return markAsUnfavourtireState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (markAsUnfavourtireState != null) {
      return markAsUnfavourtireState(this);
    }
    return orElse();
  }
}

abstract class _MarkAsUnfavourtireState implements FavourtireDishState {
  const factory _MarkAsUnfavourtireState() = _$MarkAsUnfavourtireStateImpl;
}

/// @nodoc
abstract class _$$MarkAsFavourtireStateImplCopyWith<$Res> {
  factory _$$MarkAsFavourtireStateImplCopyWith(
          _$MarkAsFavourtireStateImpl value,
          $Res Function(_$MarkAsFavourtireStateImpl) then) =
      __$$MarkAsFavourtireStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsFavourtireStateImplCopyWithImpl<$Res>
    extends _$FavourtireDishStateCopyWithImpl<$Res, _$MarkAsFavourtireStateImpl>
    implements _$$MarkAsFavourtireStateImplCopyWith<$Res> {
  __$$MarkAsFavourtireStateImplCopyWithImpl(_$MarkAsFavourtireStateImpl _value,
      $Res Function(_$MarkAsFavourtireStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsFavourtireStateImpl implements _MarkAsFavourtireState {
  const _$MarkAsFavourtireStateImpl();

  @override
  String toString() {
    return 'FavourtireDishState.markAsFavourtireState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsFavourtireStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() failureState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
  }) {
    return markAsFavourtireState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? failureState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
  }) {
    return markAsFavourtireState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? failureState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (markAsFavourtireState != null) {
      return markAsFavourtireState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_FailureState value) failureState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
  }) {
    return markAsFavourtireState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_FailureState value)? failureState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
  }) {
    return markAsFavourtireState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_FailureState value)? failureState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    required TResult orElse(),
  }) {
    if (markAsFavourtireState != null) {
      return markAsFavourtireState(this);
    }
    return orElse();
  }
}

abstract class _MarkAsFavourtireState implements FavourtireDishState {
  const factory _MarkAsFavourtireState() = _$MarkAsFavourtireStateImpl;
}
