

import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:ecommerce_app/models/featured_item_model.dart';
import 'package:ecommerce_app/views/widgets/home/widget/featured_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewFeaturedItem extends StatelessWidget {
  const ListViewFeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 16.w),
      child: Container(
        padding: EdgeInsets.only(left: 8.w,top: 8.h,bottom: 8.h),
        height: 90.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
             color: Colors.grey.withOpacity(0.25),
                offset: Offset(0, 4),
                blurRadius:4 ,
               
              )
            ],
          color: Colors.white,
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.r),
        bottomLeft: Radius.circular(10.r),
      ),
        ),
        child:ListView.builder(
          itemCount: listFeaturedItemModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index) {
            return  Center(
              child: Padding(
                padding:  const EdgeInsets.only(right: 16),
                child: FeaturedListViewItem(item: listFeaturedItemModel[index],),
              ),
            );
        }) ,
      ),
    );
  }
}