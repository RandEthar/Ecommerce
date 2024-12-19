



import 'dart:async'; // لإضافة المؤقت
import 'package:ecommerce_app/views/widgets/home/widget/page_view_item_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewShopping extends StatefulWidget {
  const PageViewShopping({super.key});

  @override
  State<PageViewShopping> createState() => _PageViewShoppingState();
}

class _PageViewShoppingState extends State<PageViewShopping> {
  PageController? pv; 
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    print("rand");
    pv = PageController(initialPage: 1);
    _startAutoScroll(); 
  }

  void _startAutoScroll() {
  print('Auto scroll started');
  _timer = Timer.periodic(Duration(seconds: 3), (timer) {
    
        int nextPage = (pv!.page!.toInt() + 1) % 3;
        print(pv!.page!.toInt());
        print(nextPage);
        pv!.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
    
  });
}


  @override
  void dispose() {
    _timer?.cancel(); // إيقاف المؤقت عند التخلص من الـ Widget
    pv?.dispose(); // التخلص من الـ PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      reverse: true, // لجعل الحركة من اليمين إلى اليسار
      controller: pv,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8, left: 0),
          child: PageViewItemHome(
            pathImage: "assets/images/Flat and Heels.jpg",
            text1: "Flat and Heels",
            text2: "Stand a chance to get rewarded",
            text3: "",
            text4: "Visit now",
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 8, left: 0),
          child: PageViewItemHome(
            pathImage: "assets/images/imageone_pageview.jpg",
            text1: "50-40% OFF",
            text2: "Now in (product)",
            text3: "All colours",
            text4: "Shop Now",
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(right: 8, left: 0), // إضافة نفس الحواف
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: SizedBox(
              width: 343.w,
              height: 100.h, // التأكد من نفس الارتفاع المستخدم في الصور الأخرى
              child: Image.asset(
                "assets/images/close-up-woman-holding-shopping-bags.jpg",
                fit: BoxFit.cover, // ملء الإطار بشكل متناسق
              ),
            ),
          ),
        )
      ],
    );
  }
}
