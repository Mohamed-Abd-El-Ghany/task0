import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task0/presenation/components/custom_bottom.dart';
import 'package:task0/screens/screen2.dart';

import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  int currentIndex = 0;

  List imgList = [
    AppImages.pic1,
    AppImages.pic2,
    AppImages.pic3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200.h),
            CarouselSlider(
              options: CarouselOptions(
                  height: 260.h,
                  initialPage: 1,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              items: imgList.map((imageUrl) {
                return Image.asset(imageUrl, fit: BoxFit.fill);
              }).toList(),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(1),
                buildContainer(0),
                buildContainer(2),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            const Text(
              AppText.review1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            const Text(
              AppText.review2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 100.h,),
            CustomButton(navScreen:const Screen2(),),
          ],
        ),
      ),
    );
  }
  Container buildContainer(index) {
    return Container(
      width: currentIndex == index ? 20.w : 10.w,
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: currentIndex == index ? AppColors.black : AppColors.grey,
      ),
    );
  }
}
