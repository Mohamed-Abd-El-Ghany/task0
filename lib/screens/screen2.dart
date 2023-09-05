import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';
import '../presenation/components/custom_bottom.dart';
import 'login.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

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
                  initialPage: 2,
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
                buildContainer(2),
                buildContainer(1),
                buildContainer(0),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            const Text(
              AppText.seek1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            const Text(
              AppText.seek2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 100.h,),
            CustomButton(navScreen:const Login(),),
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
