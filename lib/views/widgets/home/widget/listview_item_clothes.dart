import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/widgets/clothes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewItemClothes extends StatelessWidget {
  const ListviewItemClothes({super.key, required this.itemClothes});
  final Clothes itemClothes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 241.h,
      width: 170.w,
      decoration: const ShapeDecoration(shape: RoundedRectangleBorder()),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: Image.asset(
                height: 124.h,
                width: 170.w,
                
                itemClothes.pathImage),
          ),
          verticalSpace(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                itemClothes.text,
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black),
                ),
                verticalSpace(4),
                Text(
                  overflow: TextOverflow.ellipsis,
                  itemClothes.text2,
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black, fontSize: 10),
                ),
                verticalSpace(4),
                //₹1500
                Text(
                  itemClothes.newprice,
                  style: AppStyles.montserrat12medium
                      .copyWith(color: Colors.black),
                ),
                verticalSpace(4),
                //₹1500
                Row(
                  children: [
                    Text(
                     itemClothes.oldprice,
                      style: AppStyles.montserrat12medium.copyWith(
                        color: const Color(0xffBBBBBB),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xffBBBBBB),
                      ),
                    ),
                    horizontalSpace(4),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:itemClothes.rival,
                            style: AppStyles.montserrat12medium.copyWith(
                              fontSize: 10,color: Colors.red
                            ),
                          ),
                           TextSpan(
                            text: "%Off",
                            style: AppStyles.montserrat12medium.copyWith(
                              fontSize: 10,color: Colors.red, height: 0.16,
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  
                    
                  ],
                ),
                     horizontalSpace(4),
                       Row(
                         children: [
                           Row(children:List.generate(4, (index){
                            return const Icon(
                             size: 14,
                             color: Color(0xffEDB310),
                              Icons.star);
                           }),
                           
                           ),
                           Row(children:List.generate(1, (index){
                        return const Icon(
                         size: 14,
                         color: Color(0xffBBBBBB),
                          Icons.star_half);
                       }),
                       
                       )
                       ,horizontalSpace(4),
                        Text(
                     itemClothes.evaluation,
                      style: AppStyles.montserrat12medium.copyWith(
                        color: const Color(0xffBBBBBB),
                        decoration: TextDecoration.lineThrough,
                        decorationColor: const Color(0xffBBBBBB),
                      ),
                    ),
                         ],
                       ), 
              ],
            ),
          )
        ],
      ),
    );
  }
}
