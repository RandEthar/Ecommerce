import 'package:ecommerce_app/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/logic/signup/siginup_cubit.dart';
import 'package:ecommerce_app/views/get_start_screen.dart';
import 'package:ecommerce_app/views/on_bording/on_bording_screen.dart';
import 'package:ecommerce_app/views/screens/home_screen.dart';
import 'package:ecommerce_app/views/screens/siginup_screen.dart';
import 'package:ecommerce_app/views/screens/signin_screen.dart';
import 'package:ecommerce_app/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case SiginupScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) => SiginupCubit(),
            child: const SiginupScreen(),
          );
        });
      case SigninScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) => SigninCubit(),
            child: const SigninScreen(),
          );
        });
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const SplashScreen();
        });
      case OnBordingScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const OnBordingScreen();
        });
      case GetStartScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const GetStartScreen();
        });
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Text("No route found for${settings.name}"),
          );
        });
    }
  }
}
