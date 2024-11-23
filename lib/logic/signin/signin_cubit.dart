import 'package:ecommerce_app/logic/signin/sigin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SigninCubit extends Cubit<SiginState> {
  SigninCubit() : super(SiginInitial());
      TextEditingController emailController=  TextEditingController();
TextEditingController passwordController=  TextEditingController();
  GlobalKey formkey=GlobalKey<FormState>();

   }

