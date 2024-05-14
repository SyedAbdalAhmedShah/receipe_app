import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/auth_bloc/bloc/auth_bloc.dart';
import 'package:receipe_app/blocs/nav_bar_bloc/cubit/navigation_bar_cubit.dart';
import 'package:receipe_app/blocs/profile_bloc/bloc/profile_bloc.dart';
import 'package:receipe_app/config/theme_config.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/pages/home/bottom_nav_screen.dart';
import 'package:receipe_app/pages/splash/splash_screen.dart';
import 'package:receipe_app/utils/dependency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBarCubit(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.APP_NAME,
        theme: ThemeConfig.themeData,
        home: const LandingPage(),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    authBloc.add(IsUserLogedIn());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: authBloc,
      builder: (context, state) {
        if (state is NewUserLogedIn) {
          return const Splashscreen();
        } else {
          return const BottomNavScreen();
        }
      },
    );
  }
}
