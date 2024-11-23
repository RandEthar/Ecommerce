import 'package:ecommerce_app/logic/signin/signin_cubit.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/views/widgets/custom_password_text_form_fild.dart';
import 'package:ecommerce_app/views/widgets/custom_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SinginFormField extends StatelessWidget {
  const SinginFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SigninCubit>().formkey,
      child: Column(
        children: [
         CustomTextFormFild(
            controller:context.read<SigninCubit>().emailController,
            hint: "Username or Email",
            prefixIcon: "assets/svgs/User.svg",
          ),
          verticalSpace(31),
          CustomPasswordTextFormFild(controller: context.read<SigninCubit>().passwordController,)
        ],
      ),
    );
  }
}
