import 'package:ecommerce_app/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/logic/signup/siginup_cubit.dart';

import 'package:ecommerce_app/views/on_bording/on_bording_screen.dart';
import 'package:ecommerce_app/views/screens/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:ecommerce_app/views/screens/forget_password/screens/forget_password_screen.dart';

import 'package:ecommerce_app/views/screens/siginup_screen.dart';
import 'package:ecommerce_app/views/screens/signin_screen.dart';
import 'package:ecommerce_app/views/splash/splash_screen.dart';
import 'package:ecommerce_app/views/welcome/screen/welcome_screen.dart';
import 'package:ecommerce_app/views/widgets/Shop/Screen/shop_screen.dart';
import 'package:ecommerce_app/views/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app/views/widgets/cart/cart_screen.dart';
import 'package:ecommerce_app/views/widgets/home/logic/cubit/home_cubit.dart';

import 'package:ecommerce_app/views/widgets/home/screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
            case CartScreen.route:
        return MaterialPageRoute(builder: (_) {
          return const CartScreen();
        });
      case ForgetPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) => ForgetPasswordCubit(),
            child: const ForgetPasswordScreen(),
          );
        });
      case ShopScreen.routeName:
      case BottomNavBar.routeName:
        return MaterialPageRoute(builder: (_) {
          return const BottomNavBar();
        });
      case HomeScreen.routename:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          return const WelcomeScreen();
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

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Text("No route found for${settings.name}"),
          );
        });
    }
  }
}
