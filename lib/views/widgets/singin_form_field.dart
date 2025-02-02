import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/logic/signin/signin_cubit.dart';

import 'package:ecommerce_app/views/widgets/custom_password_text_form_fild.dart';
import 'package:ecommerce_app/views/widgets/custom_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinginFormField extends StatelessWidget {
  const SinginFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: context.read<SigninCubit>().autovalidateMode,
      key: context.read<SigninCubit>().formkey,
      child: Column(
        children: [
         CustomTextFormFild(
          validator: (value) {
            if(value==null||value.isEmpty){
              return 'Please enter your email';
            }else if(!isValidEmail(value)){
              return "Please enter a valid email";
            }
            return null;
          },
            controller:context.read<SigninCubit>().emailController,
            hint: "Username or Email",
            prefixIcon: "assets/svgs/User.svg",
          ),
          verticalSpace(31),
          CustomPasswordTextFormFild(
            validator: (value) {
              if(value==null||value.isEmpty){
                return 'Please enter your password';
              }else if(validatePassword(value)){
                      return "Please enter a valid password";
              }
              return null;
            },
            
            
            controller: context.read<SigninCubit>().passwordController,)
        ],
      ),
    );
  }
}
