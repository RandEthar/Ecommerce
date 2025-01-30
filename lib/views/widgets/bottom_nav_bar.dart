import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_styles.dart';

import 'package:ecommerce_app/views/widgets/Search/Screen/search_screen.dart';
import 'package:ecommerce_app/views/widgets/Setting/Screen/Setting_screen.dart';
import 'package:ecommerce_app/views/widgets/Shop/Screen/shop_screen.dart';
import 'package:ecommerce_app/views/widgets/Shop/logic/cubit/shop_cubit.dart';

import 'package:ecommerce_app/views/widgets/Wishlist/Screen/wishlist_screen.dart';
import 'package:ecommerce_app/views/widgets/cart/cart_screen.dart';
import 'package:ecommerce_app/views/widgets/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_app/views/widgets/home/screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  static const String routeName = 'bottom_nav_bar';
  const BottomNavBar({super.key});
  static const String routename = 'home';

  @override
  State<BottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screen = [
    BlocProvider(
      create: (context) => HomeCubit(),
      child:const HomeScreen(),
    ),
    const WishlistScreen(),
   const SearchScreen(),
   const SettingScreen(),
   const CartScreen()

  ];
  List<String> icons = const [
    "assets/svgs/home.svg",
    "assets/svgs/heart.svg",
    "assets/svgs/search.svg",
    "assets/svgs/settings.svg"
  ];
  List<String> labels = const [
    "Home",
    "Wishlist",
    "Search",
    "Settings",
  ];
  //Widget currentScreen = const  HomeScreen();
  //final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      floatingActionButton: Container(
        width: 56.w,
        height: 56.h,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 4, offset: Offset(0, 4), color: Colors.grey)
            ]),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          onPressed: () {
            setState(() {
              currentIndex = 4;
            });
          },
          child: SvgPicture.asset(
            "assets/svgs/shopping-cart 2.svg",
            width: 24,
            height: 24,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        height: 76.h,
        //shape: CircularNotchedRectangle(),
        //   notchMargin: 10,

        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            icons.length,
            (index) {
              bool isSelected = currentIndex == index;
              return InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceOut,
                        child: SvgPicture.asset(icons[index],
                            height: isSelected ? 28 : 24,
                            width: isSelected ? 28 : 24,
                            color: isSelected
                                ? AppColors.primary
                                : Colors.black)), // ثابت
                    const SizedBox(height: 4), // ثابت
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceOut,
                      style: AppStyles.roboto12medium.copyWith(
                          fontSize: isSelected ? 14.sp : 12.sp,
                          color:
                              isSelected ? AppColors.primary : Colors.black), //
                      child: Text(
                        labels[index],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
