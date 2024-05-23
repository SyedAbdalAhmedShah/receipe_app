import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourtire_dish_event.dart';
part 'favourtire_dish_state.dart';
part 'favourtire_dish_bloc.freezed.dart';

class FavourtireDishBloc
    extends Bloc<FavourtireDishEvent, FavourtireDishState> {
  FavourtireDishBloc() : super(_Initial()) {
    on<FavourtireDishEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
