import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yahya_portfolio/services/services.dart';
import 'package:yahya_portfolio/views/home_screen.dart/web/widgets/show_project_details.dart';

import 'widgets/left_photo_side.dart';
import 'widgets/right_info_side.dart';

Widget buildWebLayout({required BuildContext context}) {
  Size size = MediaQuery.of(context).size;
  final controller = Get.find<PortfolioController>();
  return SingleChildScrollView(
    child: SizedBox(
      height: size.height,
      width: size.width,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LeftSidePhotoContainer(),
            Container(
              height: size.height,
              width: 2,
              margin: EdgeInsets.symmetric(
                  vertical: size.height * 0.05, horizontal: size.width * 0.03),
              decoration: BoxDecoration(
                  color: AppColors.kcSecondaryTextColor.withOpacity(0.6)),
            ),

            // Right Side
            controller.showProjectDetails.value
                ? const Expanded(
                    child: ShowProjectDetails(),
                  )
                : const Expanded(child: RideSidePortFolioHome()),
          ],
        ),
      ),
    ),
  );
}

Widget customTextButton(
    {required VoidCallback onTap, required String buttonText}) {
  return Padding(
    padding: EdgeInsets.only(top: 24.h),
    child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(
              color: AppColors.kcSecondaryTextColor,
              fontSize: 10.sp,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300),
        )),
  );
}

void animateNamePadding(PortfolioController controller) {
  controller.firstNameTopPadding.value = (ScreenUtil().screenHeight * 0.3);
  controller.photoTopPadding.value = (ScreenUtil().screenHeight * 0.1);
  controller.lastNameLeftPadding.value = (ScreenUtil().screenWidth * 0.05);
  controller.lastNameBottomPadding.value = (ScreenUtil().screenHeight * 0.65);
  controller.infoBottomPadding.value = (ScreenUtil().screenHeight * 0.6);
  controller.infoDetailOpacity.value = (0.7);
  controller.topRowLeftPadding.value = (ScreenUtil().screenHeight * 0.1);
}
