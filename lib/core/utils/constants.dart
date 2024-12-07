import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String isUserOpenedApp = "isUserOpenedApp";
final List<String> svgIcons = [
  "assets/svgs/google.svg",
  "assets/svgs/apple 1.svg",
  "assets/svgs/f.svg",
];

verticalSpace(double hight) {
  return SizedBox(
    height: hight.h,
  );
}

horizontalSpace(double width) {
  return SizedBox(
    width: width.w,
  );
}

bool isValidEmail(String email) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}

bool validatePassword(String value) {
  return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(value);
}
void BuildError(BuildContext context,String message){
   ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
}