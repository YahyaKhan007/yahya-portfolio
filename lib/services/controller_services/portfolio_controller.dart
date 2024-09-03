import 'package:get/get.dart';

class PortfolioController extends GetxController {
  RxDouble firstNameTopPadding = RxDouble(0);
  RxDouble photoTopPadding = RxDouble(0);
  RxDouble lastNameLeftPadding = RxDouble(0);
  RxDouble lastNameBottomPadding = RxDouble(0);
  RxDouble infoBottomPadding = RxDouble(0);
  RxDouble infoDetailOpacity = RxDouble(0);
  RxDouble skillRightPadding = RxDouble(0);
  RxDouble topRowLeftPadding = RxDouble(0);

  // RxDouble nameTopPadding = RxDouble((ScreenUtil().screenHeight * 0.3));

  RxBool showProjectDetails = RxBool(false);
}
