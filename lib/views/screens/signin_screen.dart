
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/font_weight_helper.dart';
import 'package:ecommerce_app/utils/widgets/custom_button.dart';
import 'package:ecommerce_app/views/screens/siginup_screen.dart';
import 'package:ecommerce_app/views/widgets/create_an_account.dart';

import 'package:ecommerce_app/views/widgets/forgot_password.dart';
import 'package:ecommerce_app/views/widgets/or_continue_with.dart';
import 'package:ecommerce_app/views/widgets/singin_form_field.dart';
import 'package:ecommerce_app/views/widgets/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const routeName = 'signin-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(19),
                Text(
                  "Welcome\n Back!",
                  style: AppStyles.montserrat14SimeBold.copyWith(
                    fontSize: 36.sp,
                    fontWeight: FontWieghtHelper.bold,
                    color: Colors.black,
                  ),
                ),
                verticalSpace(33),
                const SinginFormField(),
                verticalSpace(9),
                const ForgotPassword(),
                verticalSpace(52),
              CustomButton(
                  onPressed: () {
                    
                  },
                  title: "Login",
                ),
                verticalSpace(75),
                const ORContinueWth(),
                verticalSpace(20),
                const SocialMediaButtons(),
                verticalSpace(28),
               CreateAnAccount(title1: "Create An Account ",
                title2: "Sign Up",onTap: () {
            Navigator.pushNamed(context,SiginupScreen.routeName);
          },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


