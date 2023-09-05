import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task0/app/app_colors.dart';
import 'package:task0/app/app_texts.dart';

class CustomButton extends StatelessWidget {
  Widget navScreen;
   CustomButton({super.key,required this.navScreen});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
          height: 48.h,
          width: 240.w,
          decoration: BoxDecoration(
            color: AppColors.blue2,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 14.h),
            child: const Center(
              child: Text(
                AppText.next,
                style: TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>navScreen ));
        },
      ),
    );
  }
}
