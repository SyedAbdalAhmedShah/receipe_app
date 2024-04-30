import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  int navPageIndex = 0;
  NavigationBarCubit() : super(NavigationBarInitial());

  updateNavPage(int index) {
    navPageIndex = index;
    emit(UpdateNavBarIndexState());
  }
}
