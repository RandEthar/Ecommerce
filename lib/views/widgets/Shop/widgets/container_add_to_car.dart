



import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContenerAddToCard extends StatelessWidget {
  const ContenerAddToCard({
    super.key, required this.listColor, required this.text, this.pathIcon,
  });
    final List<Color> listColor;
    final String text ;
    final pathIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 136,
              height: 40,
              child: Stack(
    children: [
      Positioned(
        left: 0,
        top: 2,
        child: Container(
          width: 136,
          height: 36,
          decoration:   ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(-0.00, -1.00),
              end: const Alignment(0, 1),
              colors: listColor,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(4),
              ),
            ),
          ),
        ),
      ),
      Positioned(
             right: 8,top: 8,bottom: 8,
            child: Text(text,style: AppStyles.montserrat12medium.copyWith(
              fontSize: 16,color: Colors.white,  height: 1.25,
            ),),
          ),
      Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 40,
          height: 40,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.00, -1.00),
              end: Alignment(0, 1),
              colors: listColor,
            ),
            shape: OvalBorder(),
          ),child: SvgPicture.asset(pathIcon,fit: BoxFit.scaleDown,),
        ),
      ),
     
    ],
              ),
            );
  }
}
