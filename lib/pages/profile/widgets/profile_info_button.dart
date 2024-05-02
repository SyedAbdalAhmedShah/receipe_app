import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/profile_bloc/bloc/profile_bloc.dart';
import 'package:receipe_app/constants/app_strings.dart';

class ProfileInfoButton extends StatelessWidget {
  final int index;
  const ProfileInfoButton({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    ProfileBloc profileBloc = context.read<ProfileBloc>();
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        GestureDetector(
          onTap: () => profileBloc.add(SelectProfileSectionEvent(index: index)),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return AnimatedContainer(
                height: size.height * 0.05,
                width: size.width * 0.4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: profileBloc.selectionProfileSection == index
                        ? Theme.of(context).colorScheme.primary.withAlpha(60)
                        : Colors.transparent),
                duration: Durations.extralong1,
                child: Text(index == 0 ? AppStrings.reciepe : AppStrings.videos,
                    style: TextStyle(
                        color: profileBloc.selectionProfileSection != index
                            ? Theme.of(context).colorScheme.primary
                            : Colors.white)),
              );
            },
          ),
        ),
      ],
    );
  }
}
