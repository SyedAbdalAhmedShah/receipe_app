import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  int selectionProfileSection = 0;

  ProfileBloc() : super(ProfileInitial()) {
    on<SelectProfileSectionEvent>((event, emit) {
      selectionProfileSection = event.index;
      emit(ProfileSectionSelectionSstate());
    });
  }
}
