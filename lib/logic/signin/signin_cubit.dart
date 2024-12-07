import 'package:ecommerce_app/core/services/auth.dart';
import 'package:ecommerce_app/logic/signin/sigin_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SigninCubit extends Cubit<SiginState> {
  SigninCubit() : super(SiginInitial());
      TextEditingController emailController=  TextEditingController();
TextEditingController passwordController=  TextEditingController();
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
 AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
 AuthImpl auth=AuthImpl();


 void siginup()async{
  emit(SiginLoading());
  try {
    await auth.signInWithEmailAndPassword(email:emailController.text ,
    password: passwordController.text);
      emit(SiginSuccess());
  } catch (e) {
      emit(SiginFailer(message: e.toString()));
  }
 }

   }

