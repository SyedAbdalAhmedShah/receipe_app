// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDishes,
    required TResult Function() markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDishes,
    TResult? Function()? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDishes,
    TResult Function()? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDishes value) fetchDishes,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDishes value)? fetchDishes,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDishes value)? fetchDishes,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.started'));
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
    required TResult Function() fetchDishes,
    required TResult Function() markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDishes,
    TResult? Function()? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDishes,
    TResult Function()? markAsFavourtire,
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
    required TResult Function(_FetchDishes value) fetchDishes,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDishes value)? fetchDishes,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDishes value)? fetchDishes,
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

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchDishesImplCopyWith<$Res> {
  factory _$$FetchDishesImplCopyWith(
          _$FetchDishesImpl value, $Res Function(_$FetchDishesImpl) then) =
      __$$FetchDishesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDishesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchDishesImpl>
    implements _$$FetchDishesImplCopyWith<$Res> {
  __$$FetchDishesImplCopyWithImpl(
      _$FetchDishesImpl _value, $Res Function(_$FetchDishesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchDishesImpl with DiagnosticableTreeMixin implements _FetchDishes {
  const _$FetchDishesImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchDishes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.fetchDishes'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDishesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDishes,
    required TResult Function() markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return fetchDishes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDishes,
    TResult? Function()? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return fetchDishes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDishes,
    TResult Function()? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (fetchDishes != null) {
      return fetchDishes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDishes value) fetchDishes,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return fetchDishes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDishes value)? fetchDishes,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return fetchDishes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDishes value)? fetchDishes,
    TResult Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (fetchDishes != null) {
      return fetchDishes(this);
    }
    return orElse();
  }
}

abstract class _FetchDishes implements HomeEvent {
  const factory _FetchDishes() = _$FetchDishesImpl;
}

/// @nodoc
abstract class _$$MarkAsFavourtireImplCopyWith<$Res> {
  factory _$$MarkAsFavourtireImplCopyWith(_$MarkAsFavourtireImpl value,
          $Res Function(_$MarkAsFavourtireImpl) then) =
      __$$MarkAsFavourtireImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsFavourtireImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$MarkAsFavourtireImpl>
    implements _$$MarkAsFavourtireImplCopyWith<$Res> {
  __$$MarkAsFavourtireImplCopyWithImpl(_$MarkAsFavourtireImpl _value,
      $Res Function(_$MarkAsFavourtireImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsFavourtireImpl
    with DiagnosticableTreeMixin
    implements _MarkAsFavourtire {
  const _$MarkAsFavourtireImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.markAsFavourtire()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.markAsFavourtire'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAsFavourtireImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchDishes,
    required TResult Function() markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return markAsFavourtire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDishes,
    TResult? Function()? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return markAsFavourtire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDishes,
    TResult Function()? markAsFavourtire,
    TResult Function()? markAsUnFavourtire,
    required TResult orElse(),
  }) {
    if (markAsFavourtire != null) {
      return markAsFavourtire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchDishes value) fetchDishes,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return markAsFavourtire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDishes value)? fetchDishes,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return markAsFavourtire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDishes value)? fetchDishes,
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

abstract class _MarkAsFavourtire implements HomeEvent {
  const factory _MarkAsFavourtire() = _$MarkAsFavourtireImpl;
}

/// @nodoc
abstract class _$$MarkAsUnFavourtireImplCopyWith<$Res> {
  factory _$$MarkAsUnFavourtireImplCopyWith(_$MarkAsUnFavourtireImpl value,
          $Res Function(_$MarkAsUnFavourtireImpl) then) =
      __$$MarkAsUnFavourtireImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsUnFavourtireImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$MarkAsUnFavourtireImpl>
    implements _$$MarkAsUnFavourtireImplCopyWith<$Res> {
  __$$MarkAsUnFavourtireImplCopyWithImpl(_$MarkAsUnFavourtireImpl _value,
      $Res Function(_$MarkAsUnFavourtireImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsUnFavourtireImpl
    with DiagnosticableTreeMixin
    implements _MarkAsUnFavourtire {
  const _$MarkAsUnFavourtireImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.markAsUnFavourtire()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.markAsUnFavourtire'));
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
    required TResult Function() fetchDishes,
    required TResult Function() markAsFavourtire,
    required TResult Function() markAsUnFavourtire,
  }) {
    return markAsUnFavourtire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchDishes,
    TResult? Function()? markAsFavourtire,
    TResult? Function()? markAsUnFavourtire,
  }) {
    return markAsUnFavourtire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchDishes,
    TResult Function()? markAsFavourtire,
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
    required TResult Function(_FetchDishes value) fetchDishes,
    required TResult Function(_MarkAsFavourtire value) markAsFavourtire,
    required TResult Function(_MarkAsUnFavourtire value) markAsUnFavourtire,
  }) {
    return markAsUnFavourtire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchDishes value)? fetchDishes,
    TResult? Function(_MarkAsFavourtire value)? markAsFavourtire,
    TResult? Function(_MarkAsUnFavourtire value)? markAsUnFavourtire,
  }) {
    return markAsUnFavourtire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchDishes value)? fetchDishes,
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

abstract class _MarkAsUnFavourtire implements HomeEvent {
  const factory _MarkAsUnFavourtire() = _$MarkAsUnFavourtireImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.initial'));
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
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
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
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
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
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl with DiagnosticableTreeMixin implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState.loadingState'));
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
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
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
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements HomeState {
  const factory _LoadingState() = _$LoadingStateImpl;
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
    extends _$HomeStateCopyWithImpl<$Res, _$MarkAsUnfavourtireStateImpl>
    implements _$$MarkAsUnfavourtireStateImplCopyWith<$Res> {
  __$$MarkAsUnfavourtireStateImplCopyWithImpl(
      _$MarkAsUnfavourtireStateImpl _value,
      $Res Function(_$MarkAsUnfavourtireStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsUnfavourtireStateImpl
    with DiagnosticableTreeMixin
    implements _MarkAsUnfavourtireState {
  const _$MarkAsUnfavourtireStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.markAsUnfavourtireState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeState.markAsUnfavourtireState'));
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
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return markAsUnfavourtireState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return markAsUnfavourtireState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
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
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return markAsUnfavourtireState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return markAsUnfavourtireState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (markAsUnfavourtireState != null) {
      return markAsUnfavourtireState(this);
    }
    return orElse();
  }
}

abstract class _MarkAsUnfavourtireState implements HomeState {
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
    extends _$HomeStateCopyWithImpl<$Res, _$MarkAsFavourtireStateImpl>
    implements _$$MarkAsFavourtireStateImplCopyWith<$Res> {
  __$$MarkAsFavourtireStateImplCopyWithImpl(_$MarkAsFavourtireStateImpl _value,
      $Res Function(_$MarkAsFavourtireStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAsFavourtireStateImpl
    with DiagnosticableTreeMixin
    implements _MarkAsFavourtireState {
  const _$MarkAsFavourtireStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.markAsFavourtireState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'HomeState.markAsFavourtireState'));
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
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return markAsFavourtireState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return markAsFavourtireState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
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
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return markAsFavourtireState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return markAsFavourtireState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (markAsFavourtireState != null) {
      return markAsFavourtireState(this);
    }
    return orElse();
  }
}

abstract class _MarkAsFavourtireState implements HomeState {
  const factory _MarkAsFavourtireState() = _$MarkAsFavourtireStateImpl;
}

/// @nodoc
abstract class _$$DishesFetchedSuccessStateImplCopyWith<$Res> {
  factory _$$DishesFetchedSuccessStateImplCopyWith(
          _$DishesFetchedSuccessStateImpl value,
          $Res Function(_$DishesFetchedSuccessStateImpl) then) =
      __$$DishesFetchedSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products});
}

/// @nodoc
class __$$DishesFetchedSuccessStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DishesFetchedSuccessStateImpl>
    implements _$$DishesFetchedSuccessStateImplCopyWith<$Res> {
  __$$DishesFetchedSuccessStateImplCopyWithImpl(
      _$DishesFetchedSuccessStateImpl _value,
      $Res Function(_$DishesFetchedSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$DishesFetchedSuccessStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$DishesFetchedSuccessStateImpl
    with DiagnosticableTreeMixin
    implements _DishesFetchedSuccessState {
  const _$DishesFetchedSuccessStateImpl(
      {required final List<ProductModel> products})
      : _products = products;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.dishesFetchedSuccessState(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.dishesFetchedSuccessState'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DishesFetchedSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DishesFetchedSuccessStateImplCopyWith<_$DishesFetchedSuccessStateImpl>
      get copyWith => __$$DishesFetchedSuccessStateImplCopyWithImpl<
          _$DishesFetchedSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return dishesFetchedSuccessState(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return dishesFetchedSuccessState?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (dishesFetchedSuccessState != null) {
      return dishesFetchedSuccessState(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return dishesFetchedSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return dishesFetchedSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (dishesFetchedSuccessState != null) {
      return dishesFetchedSuccessState(this);
    }
    return orElse();
  }
}

abstract class _DishesFetchedSuccessState implements HomeState {
  const factory _DishesFetchedSuccessState(
          {required final List<ProductModel> products}) =
      _$DishesFetchedSuccessStateImpl;

  List<ProductModel> get products;
  @JsonKey(ignore: true)
  _$$DishesFetchedSuccessStateImplCopyWith<_$DishesFetchedSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl with DiagnosticableTreeMixin implements _ErrorState {
  const _$ErrorStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.errorState(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.errorState'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingState,
    required TResult Function() markAsUnfavourtireState,
    required TResult Function() markAsFavourtireState,
    required TResult Function(List<ProductModel> products)
        dishesFetchedSuccessState,
    required TResult Function(String errorMessage) errorState,
  }) {
    return errorState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingState,
    TResult? Function()? markAsUnfavourtireState,
    TResult? Function()? markAsFavourtireState,
    TResult? Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult? Function(String errorMessage)? errorState,
  }) {
    return errorState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingState,
    TResult Function()? markAsUnfavourtireState,
    TResult Function()? markAsFavourtireState,
    TResult Function(List<ProductModel> products)? dishesFetchedSuccessState,
    TResult Function(String errorMessage)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_MarkAsUnfavourtireState value)
        markAsUnfavourtireState,
    required TResult Function(_MarkAsFavourtireState value)
        markAsFavourtireState,
    required TResult Function(_DishesFetchedSuccessState value)
        dishesFetchedSuccessState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult? Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult? Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_MarkAsUnfavourtireState value)? markAsUnfavourtireState,
    TResult Function(_MarkAsFavourtireState value)? markAsFavourtireState,
    TResult Function(_DishesFetchedSuccessState value)?
        dishesFetchedSuccessState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements HomeState {
  const factory _ErrorState({required final String errorMessage}) =
      _$ErrorStateImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
