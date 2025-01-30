



import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContenerShopScreen extends StatelessWidget {
  const ContenerShopScreen({
    super.key, required this.hight, required this.width, required this.title, required this.pathIcon,
  });
  final double hight;
final double width;
final String title;
final String pathIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,width: width,
    
      decoration: ShapeDecoration(shape:RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(4.r)
          ,side:const  BorderSide(
             color: Color(0xff828282)
          )
    
      )),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            SvgPicture.asset(pathIcon,height: 16,width: 16,)
           , Text(title,style: AppStyles.montserrat12medium.copyWith(
            fontSize: 10,height: 1.16
           ),)
            ,horizontalSpace(4),
        
          ],
        ),
      ),
    );
  }
}
