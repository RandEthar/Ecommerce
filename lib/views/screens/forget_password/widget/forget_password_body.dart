import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/custom_button.dart';
import 'package:ecommerce_app/views/screens/forget_password/logic/cubit/forget_password_cubit.dart';

import 'package:ecommerce_app/views/widgets/custom_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w,),
      child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
       
        children: [
        SizedBox(height: 63.h,),
          Text("Forgot\npassword?",style: AppStyles.montserrat36Bold,)
       ,SizedBox(height: 32.h,),
       CustomTextFormFild(hint: 'Enter your email address',
        prefixIcon:"assets/svgs/Mail.svg", 
        controller: context.read<ForgetPasswordCubit>().forget_password),
      SizedBox(height: 26.h,),
      Row(children: [
        Text("*",style: AppStyles.montserrat12regular.copyWith(color: AppColors.primary),),
        Text(" We will send you a message to set or reset\n your new password",
        style: AppStyles.montserrat12regular.copyWith(
        
        ),)
      ],),
      SizedBox(height: 26.h,),
    CustomButton(
      onPressed: () {
        context.read<ForgetPasswordCubit>().resetPassword;
      },
      title: "Submit",),
         
      
      
      ],),
    );
  }
}