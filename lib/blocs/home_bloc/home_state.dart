part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingState() = _LoadingState;

  const factory HomeState.markAsUnfavourtireState() = _MarkAsUnfavourtireState;
  const factory HomeState.markAsFavourtireState() = _MarkAsFavourtireState;
  const factory HomeState.dishesFetchedSuccessState(
      {required List<ProductModel> products}) = _DishesFetchedSuccessState;
  const factory HomeState.errorState({required String errorMessage}) =
      _ErrorState;
}
