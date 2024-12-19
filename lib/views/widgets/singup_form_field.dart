import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/logic/signup/siginup_cubit.dart';

import 'package:ecommerce_app/views/widgets/custom_password_text_form_fild.dart';
import 'package:ecommerce_app/views/widgets/custom_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingupFormField extends StatelessWidget {
  const SingupFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
     autovalidateMode: context.read<SiginupCubit>().autovalidateMode,
        key: context.read<SiginupCubit>().formkey,
        child: Column(
          children: [
            CustomTextFormFild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }else if(!isValidEmail(value)){
                    return 'Please enter a valid email';
                }
                return null;
              },
              controller: context.read<SiginupCubit>().emailController,
              hint: "Email",
              prefixIcon: "assets/svgs/User.svg",
            ),
            verticalSpace(31),
             CustomTextFormFild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              controller: context.read<SiginupCubit>().nameController,
              hint: "Username",
              prefixIcon: "assets/svgs/User.svg",
            ), verticalSpace(31),
            CustomPasswordTextFormFild(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                 
                  return null;
                },
                controller: context.read<SiginupCubit>().passwordController),
            verticalSpace(31),
            CustomPasswordTextFormFild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password Controller';
                }  if (context.read<SiginupCubit>().confirmPasswordController.text!=
                    context.read<SiginupCubit>().passwordController.text) {
                  return 'Password does not match';
                }
                return null;
              },
              controller:
                  context.read<SiginupCubit>().confirmPasswordController,
              hint: "Confirm Password",
            ),
            verticalSpace(19),
          ],
        ));
  }
}
