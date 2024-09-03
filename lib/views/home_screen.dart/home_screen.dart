import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yahya_portfolio/services/controller_services/portfolio_controller.dart';
import 'package:yahya_portfolio/views/home_screen.dart/web/web_home_layout.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      animateNamePadding(Get.find<PortfolioController>());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: kIsWeb
          ? buildWebLayout(context: context)
          : const Center(
              child: Text("Mobile Layout to be build ..."),
            ),
    );
  }
}
