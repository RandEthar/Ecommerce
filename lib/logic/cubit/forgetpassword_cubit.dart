import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubitCubit extends Cubit<ForgetpasswordCubitState> {
  ForgetpasswordCubitCubit() : super(ForgetpasswordCubitInitial());
    GlobalKey<FormState> form=GlobalKey<FormState>();
    TextEditingController emailController=  TextEditingController();




}
