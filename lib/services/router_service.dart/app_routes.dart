import 'package:get/get.dart';
import 'package:yahya_portfolio/views/views.dart';

class AppRouterHelper {
  static const String splash = '/splash';
  // static const String onboarding = '/onboarding';
  // static const String getStarted = '/getStarted';
  // static const String dashboard = '/dashboard';

  // static const String login = '/login';
  // static const String register = '/register';
  // static const String completeProfile = '/completeProfile';

  // static const String special = '/special';
  // static const String chatList = '/chatList';
  // static const String chatRoom = '/chatRoom';
  // static const String profile = '/profile';
  static const String mainHomeScreen = '/homeScreen';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    // GetPage(name: onboarding, page: () => const OnBoardingScreen()),
    // GetPage(name: login, page: () => LoginPage()),
    // GetPage(name: getStarted, page: () => const GetStarted()),
    // GetPage(name: dashboard, page: () => DashboardScreen()),
    // GetPage(name: register, page: () => RegistrationScreen()),
    // GetPage(name: completeProfile, page: () => CompleteProfile()),
    // GetPage(name: special, page: () => const SpecialScreen()),
    // GetPage(name: chatList, page: () => const ChatListScreen()),
    // GetPage(
    //   name: chatRoom,
    //   page: () {
    //     final args = Get.arguments as Map<String, dynamic>;
    //     return ChatroomScreen(
    //       chatModel: args['chatModel'],
    //       targetUser: args['targetUser'],
    //     );
    //   },
    // ),
    // GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: mainHomeScreen, page: () => const MainHomeScreen()),
  ];
}
