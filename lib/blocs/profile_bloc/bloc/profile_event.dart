part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class SelectProfileSectionEvent extends ProfileEvent {
  final int index;

  SelectProfileSectionEvent({required this.index});
}
