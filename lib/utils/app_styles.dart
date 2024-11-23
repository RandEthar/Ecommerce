
import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/utils/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class AppStyles {
  //Libre Caslon Text
  //Montserrat
  static TextStyle libreCaslonText40Bold=GoogleFonts.libreCaslonText(
  fontWeight: FontWieghtHelper.bold,
   fontSize: 40.sp,color:  AppColors.primary
  );
static TextStyle montserrat14SimeBold=GoogleFonts.montserrat(
  fontWeight: FontWieghtHelper.semiBold,
   fontSize: 14.sp,color:const Color(0xffA8A8A9)
  );
static TextStyle montserrat24extraBold=GoogleFonts.montserrat(
  fontWeight: FontWieghtHelper.extraBold,
   fontSize: 24.sp,color:Colors.black
  );
static TextStyle poppins14regular=GoogleFonts.montserrat(
  fontWeight: FontWieghtHelper.regular,
   fontSize: 14.sp,color:const Color(0xff575757)
  );
static TextStyle montserrat12medium=GoogleFonts.montserrat(
  fontWeight: FontWieghtHelper.medium,
   fontSize: 12.sp,color:const Color(0xff575757)
  );
static TextStyle montserrat12regular=GoogleFonts.montserrat(
  fontWeight: FontWieghtHelper.regular,
   fontSize: 12.sp,color:const Color(0xFF676767),
   height: 0.h
  );







}