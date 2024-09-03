import 'package:get/get.dart';
import 'package:yahya_portfolio/services/services.dart';

class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(PortfolioController());
  }
}
