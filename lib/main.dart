import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:yahya_portfolio/blocs/onboarding_bloc/onboarding_bloc.dart';

import 'controller_bindings.dart';
import 'firebase_options.dart';
import 'services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  // final box = GetStorage();
  // box.read('isFirstTime') ?? box.write('isFirstTime', true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kIsWeb ? const Size(1024, 768) : const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: ((context) => OnboardingBloc())),
          ],
          child: GetMaterialApp(
            initialBinding: ControllerBinding(),
            debugShowCheckedModeBanner: false,
            initialRoute: AppRouterHelper.mainHomeScreen,
            getPages: AppRouterHelper.routes,
            navigatorKey: Get.key,
            title: 'Chat Bridge',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.grey.shade900,
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018
                  .apply(fontSizeFactor: 1.sp, fontFamily: 'poppins'),
            ),
          ),
        );
      },
    );
  }
}
