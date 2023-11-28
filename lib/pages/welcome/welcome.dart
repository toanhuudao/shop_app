import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  _page(
                    1,
                    context,
                    "next",
                    "First See Learning",
                    "forget about a for of paper all knowledge in one learning",
                    "forget about a for of paper all knowledge in one learning",
                  ),
                  _page(
                    2,
                    context,
                    "next",
                    "Connect with everyone",
                    "Always keep touch with your friends",
                    "forget about a for of paper all knowledge in one learning",
                  ),
                  _page(
                    3,
                    context,
                    "get started",
                    "",
                    "forget about a for of paper all knowledge in one learning",
                    "forget about a for of paper all knowledge in one learning",
                  ),
                ],
              ),
              Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.blue,
                      size: const Size.square(8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      activeSize: const Size(10, 8),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title,
      String subTitle, String imagePath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: const Text("img one"),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h, left: 25.h, right: 25.h),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ]),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
