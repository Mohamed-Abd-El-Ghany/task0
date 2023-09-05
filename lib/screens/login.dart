import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../app/app_colors.dart';
import '../app/app_images.dart';
import '../app/app_texts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity.w, 100.h),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: AppBar(
            elevation: 0,
            backgroundColor: AppColors.white,
            centerTitle: true,
            title: const Text(
              AppText.signIn,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(color: AppColors.white),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image(
                    image: const AssetImage(AppImages.pic4),
                    fit: BoxFit.fill,
                    height: 290.h,
                    width: 365.w,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35, top: 20),
                    child: Row(
                      children: [
                        Text(
                          AppText.phone,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: IntlPhoneField(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35, bottom: 2),
                    child: Row(
                      children: [
                        Text(
                          AppText.password,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35, right: 35),
                    child: TextField(
                      decoration: InputDecoration(hintText: AppText.enter),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 35, top: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          AppText.forgot,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: AppColors.blue3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    child: Container(
                      height: 48.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        color: AppColors.blue2,
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 100.w, vertical: 14.h),
                        child: const Center(
                          child: Text(
                            AppText.login,
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    //onTap: () {Navigator.of(context).push(MaterialPageRoute(builder:  (context) => const Screen2()));},
                  ),
                  SizedBox(height: 40.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.dont,
                        style: TextStyle(
                          color: AppColors.blue3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        AppText.signup,
                        style: TextStyle(
                          color: AppColors.blue2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
