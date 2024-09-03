import 'dart:developer';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../services/services.dart';

Widget contact(
    {required BuildContext context,
    required AnimationController animationController}) {
  Size size = MediaQuery.of(context).size;

  return TweenAnimationBuilder(
      duration: animationController.duration!,
      tween: Tween(begin: 0, end: size.height * 0.04),
      builder: (BuildContext context, leftPadding, _) {
        return AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return Padding(
                padding:
                    EdgeInsets.only(bottom: 32.h, left: leftPadding.toDouble()),
                child: Column(
                  children: [
                    Text(
                      "Let’s Create Something Amazing Together!",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontStyle: FontStyle.italic,
                          color: AppColors.kcPrimaryTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                    24.h.verticalSpace,
                    contactRow(context: context),
                  ],
                ),
              );
            });
      });
}

final images = [
  "assets/icons/linkedin.png",
  "assets/icons/whatsapp.jpeg",
  "assets/icons/github.png",
  "assets/icons/email.png"
];

final labels = ["Linkedin", "Whatsapp", "Github", "Email"];

Widget contactRow({required BuildContext context}) {
  Size size = MediaQuery.of(context).size;
  return SizedBox(
    width: double.infinity,
    height: 80.h, // Set a fixed height for the ListView
    child: ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          width: size.width * 0.01.w,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return DelayedDisplay(
          delay: const Duration(seconds: 1),
          slidingCurve: Curves.linear,
          fadeIn: true,
          fadingDuration: const Duration(seconds: 1),
          slidingBeginOffset: const Offset(0, 1),
          child: contactOption(
              context: context,
              onTap: () {
                log(labels[index]);
              },
              contactOptionName: labels[index],
              imagePath: images[index]),
        );
      },
    ),
  );
}

Widget contactOption(
    {required BuildContext context,
    required String contactOptionName,
    required String imagePath,
    required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.kcPrimaryBackground,
          backgroundImage: AssetImage(
            imagePath,
          ),
        ),
        8.h.verticalSpace,
        Text(
          contactOptionName,
          style: TextStyle(
              fontSize: 8.sp,
              color: AppColors.kcSecondaryTextColor,
              fontWeight: FontWeight.w300),
        )
      ],
    ),
  );
}
