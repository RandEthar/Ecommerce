import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/views/widgets/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(svgIcons.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: SocialMediaButton(
              svg: svgIcons[index],
              onPressed: () {},
            ),
          );
        }));
  }
}
