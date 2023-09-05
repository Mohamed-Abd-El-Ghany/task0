import 'package:flutter/material.dart';
import 'package:task0/app/app_colors.dart';
import 'package:task0/app/app_images.dart';
import 'package:task0/app/app_texts.dart';
import 'package:task0/presenation/components/custom_bottom.dart';
import 'package:task0/screens/screen1.dart';
import 'package:task0/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        builder: (_, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  initialPage: 0,
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
                buildContainer(0),
                buildContainer(1),
                buildContainer(2),
              ],
            ),
            SizedBox(
              height: 70.h,
            ),
            const Text(
              AppText.check1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            const Text(
              AppText.check2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 100.h),
            CustomButton(navScreen:const Screen1(),),
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
