part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.fetchDishes() = _FetchDishes;
  const factory HomeEvent.uploadProducts() = _UploadProducts;
}
