import 'dart:developer';

import 'package:ecommerce_app/core/services/auth.dart';
import 'package:ecommerce_app/logic/signup/siginup_state.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SiginupCubit extends Cubit<SiginupState> {
  SiginupCubit() : super(SiginupInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  AuthImpl auth = AuthImpl();
 void singnup() async {
  emit(SiginupLoading());
  try {
    await auth.signUpWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    log("Siginup");
    emit(SiginupSuccess());
  } catch (e) {
    emit(SiginupFailer(massage: e.toString()));
  }
}

}
