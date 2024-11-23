import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormFild extends StatelessWidget {
  const CustomTextFormFild(
      {super.key,
      required this.hint,
      required this.prefixIcon,
      this.suffixIcon = false,
      this.obscureText = false,
      this.onTape, required this.controller, this.validator});
  final String hint;
  final String prefixIcon;
  final bool suffixIcon;
  final bool obscureText;
  final Function()? onTape;
  final TextEditingController controller;
   final String? Function(String?)?validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText:obscureText,
      style: AppStyles.montserrat12medium
          .copyWith(fontSize: 14, color: Colors.black),
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
          hintText: hint,
          hintStyle: AppStyles.montserrat12medium,
          filled: true,
          fillColor: const Color(0xffF3F3F3),
          prefixIcon: SvgPicture.asset(
            prefixIcon,
            fit: BoxFit.scaleDown,
            color: Color(0xff626262),
          ),
          suffixIcon: suffixIcon?InkWell(
            onTap: onTape,
            child: Icon(obscureText?Icons.visibility_off:Icons.visibility,color: Color(0xff626262),
            size: 25.r,)):null,
          border: BuiledOutlineInputBorder(),
          enabledBorder: BuiledOutlineInputBorder(),
          focusedBorder: BuiledOutlineInputBorder(),
          errorBorder: BuiledOutlineInputBorder(colors: Colors.red)),
    );
  }

  OutlineInputBorder BuiledOutlineInputBorder({Color? colors}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: colors ?? Color(0xffA8A8A9)),
        borderRadius: const BorderRadius.all(Radius.circular(10)));
  }
}
