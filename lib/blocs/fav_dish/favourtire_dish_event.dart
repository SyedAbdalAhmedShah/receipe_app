part of 'favourtire_dish_bloc.dart';

@freezed
class FavourtireDishEvent with _$FavourtireDishEvent {
  const factory FavourtireDishEvent.started() = _Started;
  const factory FavourtireDishEvent.myFavouriteDishes() = _MyFavouriteDishes;
  const factory FavourtireDishEvent.markAsFavourtire(
      {required ProductModel favDish}) = _MarkAsFavourtire;
  const factory FavourtireDishEvent.markAsUnFavourtire() = _MarkAsUnFavourtire;
}
