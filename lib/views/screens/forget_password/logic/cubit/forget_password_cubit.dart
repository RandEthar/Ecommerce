import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial());
   TextEditingController forget_password=TextEditingController();
 GlobalKey<FormState> key=GlobalKey<FormState>();
  Future resetPassword() async{
       await FirebaseAuth.instance.sendPasswordResetEmail(email:forget_password.text.trim());




  }







}
