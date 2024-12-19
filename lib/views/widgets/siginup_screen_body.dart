


import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/font_weight_helper.dart';
import 'package:ecommerce_app/core/utils/custom_button.dart';
import 'package:ecommerce_app/logic/signup/siginup_cubit.dart';

import 'package:ecommerce_app/views/widgets/create_an_account.dart';
import 'package:ecommerce_app/views/widgets/or_continue_with.dart';
import 'package:ecommerce_app/views/widgets/public_offer.dart';
import 'package:ecommerce_app/views/widgets/singup_form_field.dart';
import 'package:ecommerce_app/views/widgets/social_media_buttons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginupScreenBody extends StatelessWidget {
  const SiginupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(19),
                Text(
                  "Create an\n account",
                  style: AppStyles.montserrat14SimeBold.copyWith(
                    fontSize: 36.sp,
                    fontWeight: FontWieghtHelper.bold,
                    color: Colors.black,
                  ),
                ),
                verticalSpace(33),
               const SingupFormField(),
               const   PublicOffer(),
                     verticalSpace(45),CustomButton(title: "Create Account"
                     ,onPressed: () {
                      print("rand");
                       if (context.read<SiginupCubit>().formkey.currentState!.validate()){
                        context.read<SiginupCubit>().formkey.currentState!.save();
                         context.read<SiginupCubit>().singnup();
                       }
                       else {
                         context.read<SiginupCubit>().autovalidateMode=AutovalidateMode.always;
                       }
                      
                     },
                     
                     ),
                      verticalSpace(40),
                const ORContinueWth(),
                verticalSpace(20),
                const SocialMediaButtons(),
                verticalSpace(28),
                 CreateAnAccount(title1: "I Already Have an Account ",
                title2: "Login",onTap:(){
                Navigator.pop(context);
                })
            
              ],
            ),
          ),
        ),
      );
  }
}