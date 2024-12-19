import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/views/widgets/home/widget/all_featured_rows.dart';
import 'package:ecommerce_app/views/widgets/home/widget/list_view_clothes.dart';
import 'package:ecommerce_app/views/widgets/home/widget/list_view_featured_item.dart';
import 'package:ecommerce_app/views/widgets/home/widget/listview_item_clothes.dart';
import 'package:ecommerce_app/views/widgets/home/widget/page_view_item_home.dart';
import 'package:ecommerce_app/views/widgets/home/widget/page_view_shopping.dart';
import 'package:ecommerce_app/views/widgets/home/widget/search_home_field.dart';
import 'package:ecommerce_app/views/widgets/home/widget/timer_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int currentindex=0;
  Widget BuildDot(int index) {
  return Padding(
    padding: const EdgeInsets.only(right: 4),
    child: Container(
    
      height: 9.h,
      width: 9.h,
      decoration: BoxDecoration(
          color:index!=currentindex?Color(0xffDEDBDB):Color(0xffFFA3B3) ,
        borderRadius: BorderRadius.circular(4.r),
       
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        // padding:EdgeInsets.symmetric(horizontal: 16.w),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              const SearchHomeField(),
              SizedBox(
                height: 16.h,
              ),
              const AllFeaturedRows(),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        const ListViewFeaturedItem(),
        SizedBox(
          height: 16.h,
        ),
        /*Padding(
 padding:EdgeInsets.symmetric(horizontal: 16.w),
     child: Column(
       children: [
         SizedBox(
          height: 182.h,
          child: const PageViewShopping()),
          
          
       ],
     ),
   )*/
        /*SizedBox(
    height: 189.h,
    child: CarouselView( 
      itemSnapping:true,
      elevation: 2,
      itemExtent: MediaQuery.of(context).size.width, 
     children: [
         const PageViewItemHome(
            pathImage: "assets/images/Flat and Heels.jpg",
            text1: "Flat and Heels",
            text2: "Stand a chance to get rewarded",
            text3: "",
            text4: "Visit now",
          ),
          const PageViewItemHome(
            pathImage: "assets/images/imageone_pageview.jpg",
            text1: "50-40% OFF",
            text2: "Now in (product)",
            text3: "All colours",
            text4: "Shop Now",
          ),
           Image.asset(
             "assets/images/close-up-woman-holding-shopping-bags.jpg",
             fit: BoxFit.cover, // ملء الإطار بشكل متناسق
           )
        ],),
  )*/
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentindex=index;
              });
            },
              viewportFraction: 1,
              height: 189.h,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800)),
          items: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: PageViewItemHome(
                pathImage: "assets/images/Flat and Heels.jpg",
                text1: "Flat and Heels",
                text2: "Stand a chance to get rewarded",
                text3: "",
                text4: "Visit now",
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: PageViewItemHome(
                pathImage: "assets/images/imageone_pageview.jpg",
                text1: "50-40% OFF",
                text2: "Now in (product)",
                text3: "All colours",
                text4: "Shop Now",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  width: MediaQuery.of(context).size.width,
                  "assets/images/close-up-woman-holding-shopping-bags.jpg",
                  fit: BoxFit.cover, // ملء الإطار بشكل متناسق
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return BuildDot(index);
          }),
        ),
          SizedBox(
          height: 16.h,
        ),
       const TimerCounter(),
           verticalSpace(16),
           const  ListViewClothes()

      ],
    );
  }
}




