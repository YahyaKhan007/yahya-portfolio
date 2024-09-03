import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yahya_portfolio/services/services.dart';

import 'contact_option_widget.dart';

class LeftSidePhotoContainer extends StatefulWidget {
  const LeftSidePhotoContainer({super.key});

  @override
  State<LeftSidePhotoContainer> createState() => _LeftSidePhotoContainerState();
}

class _LeftSidePhotoContainerState extends State<LeftSidePhotoContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width * 0.25,
      child: SingleChildScrollView(
        child: Column(
          children: [
            photo(context: context),
            aboutMySelf(context: context),
            (size.height * 0.035).verticalSpace, 
            contact(context: context, animationController: animationController),
          ],
        ),
      ),
    );
  }

  Widget aboutMySelf({required BuildContext context}) {
    Size size = MediaQuery.of(context).size;

    return TweenAnimationBuilder(
        duration: animationController.duration!,
        tween: Tween(begin: 0, end: size.width * 0.03),
        builder: (BuildContext context, leftPadding, _) {
          return AnimatedBuilder(
              animation: animationController,
              builder: (context, _) {
                return Padding(
                  padding:
                      EdgeInsets.only(top: 32.h, left: leftPadding.toDouble()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Muhammad Yahya",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.kcPrimaryTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      8.h.verticalSpace,
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.kcSecondaryTextColor,
                            fontWeight: FontWeight.w100),
                      ),
                      32.h.verticalSpace,
                      Text(
                        "Clean code always looks like it was written by someone who cares.",
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontStyle: FontStyle.italic,
                            color: AppColors.kcSecondaryTextColor,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                );
              });
        });
  }

  Widget photo({required BuildContext context}) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.5,
      child: TweenAnimationBuilder(
          tween: Tween(begin: 0, end: size.height * 0.07),
          duration: animationController.duration!,
          builder: (BuildContext context, topPadding, _) {
            return AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: topPadding.toDouble(),
                      top: topPadding.toDouble(),
                    ),
                    child: CircleAvatar(
                      backgroundColor:
                          AppColors.kcPrimaryBackground.withOpacity(0.2),
                      radius: 160.r,
                      backgroundImage: const AssetImage(
                        'assets/images/yahya.jpeg',
                        // fit: BoxFit.cover,
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
