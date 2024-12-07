
import 'package:ecommerce_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title, description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  image,
                ),
              ),
            ],
          ),
        ),
        Text(
          title,
          style: AppStyles.montserrat24extraBold,
          textAlign: TextAlign.center,
        ),
      SizedBox(height: 16.h),
        Text(
          description,
          style: AppStyles.montserrat14SimeBold,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
