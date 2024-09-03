import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../web_home_layout.dart';

Widget topBar(
    {required BuildContext context,
    required AnimationController animationController}) {
  Size size = MediaQuery.of(context).size;
  return TweenAnimationBuilder(
      duration: animationController.duration!,
      tween: Tween(begin: 0, end: size.width * 0.01),
      builder: (context, padding, _) {
        return AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              return Padding(
                padding: EdgeInsets.only(right: padding.toDouble()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    customTextButton(
                        onTap: () {
                          Get.toNamed('/splash');
                        },
                        buttonText: "Portfolio"),
                    16.w.horizontalSpace,
                    customTextButton(onTap: () {}, buttonText: "About"),
                    16.w.horizontalSpace,
                    customTextButton(onTap: () {}, buttonText: "Contact"),
                    16.w.horizontalSpace,
                  ],
                ),
              );
            });
      });
}
