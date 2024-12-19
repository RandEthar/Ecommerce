import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/logic/signin/sigin_state.dart';
import 'package:ecommerce_app/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/views/welcome/screen/welcome_screen.dart';
import 'package:ecommerce_app/views/widgets/home/screen/home_screen.dart';
import 'package:ecommerce_app/views/widgets/signin_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const routeName = 'signin-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SigninCubit, SiginState>(
        listener: (context, state) {
          if (state is SiginFailer) {
         BuildError(context,state.message+"222");
          }else if(state is SiginSuccess){
         Navigator.pushReplacementNamed(context,WelcomeScreen.routeName);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SiginLoading,
            child: const Signinbody());
        },
      ),
    );
  }
}




