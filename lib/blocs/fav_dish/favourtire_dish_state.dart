part of 'favourtire_dish_bloc.dart';

@freezed
class FavourtireDishState with _$FavourtireDishState {
  const factory FavourtireDishState.initial() = _Initial;
  const factory FavourtireDishState.loadingState() = _LoadingState;
  const factory FavourtireDishState.failureState() = _FailureState;
  const factory FavourtireDishState.markAsUnfavourtireState() =
      _MarkAsUnfavourtireState;
  const factory FavourtireDishState.markAsFavourtireState() =
      _MarkAsFavourtireState;
}
