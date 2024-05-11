

import '../presentation/presentation.dart';

class AppRoutes {
  static const String splashOneScreen = '/splash_one_screen';
  static const String getStartedTwoScreen = '/get_started_two_screen';
  static const String signInThreeScreen = '/sign_in_three_screen';
  static const String registrationFourScreen = '/registration_four_screen';
  static const String registrationFiveScreen = '/registration_five_screen';
  static const String registrationSixScreen = '/registration_six_screen';
  static const String forgetPasswordFiveScreen = '/forget_password_five_screen';
  static const String otpSixScreen = '/otp_six_screen';
  static const String signInThreeOneScreen = '/sign_in_three_one_screen';
  static const String settingPage = '/setting_page';
  static const String editProfileScreen = '/edit_profile_screen';
  static const String homeScreen = '/home_screen';
  static const String homeOneScreen = '/home_one_screen';
  static const String orderContainerScreen = '/order_container_screen';
  static const String orderPage = '/order_page';
  static const String orderDetailsScreen = '/order_details_screen';
  static const String orderOneScreen = '/order_one_screen';
  static const String orderDetailsOneScreen = '/order_details_one_screen';
  static const String orderDetailsTwoScreen = '/order_details_two_screen';
  static const String orderDetailsThreeScreen = '/order_details_three_screen';
  static const String orderDetailsFourScreen = '/order_details_four_screen';
  static const String orderDetailsFiveScreen = '/order_details_five_screen';
  static const String myEarningPage = '/my_earning_page';
  static const String myEarningTabContainerScreen =
      '/my_earning_tab_container_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
 
  static List<GetPage> pages = [
    GetPage(
      name: splashOneScreen,
      page: () => SplashOneScreen(),
      bindings: [SplashOneBinding()],
    ),
    GetPage(
      name: getStartedTwoScreen,
      page: () => GetStartedTwoScreen(),
      bindings: [GetStartedTwoBinding()],
    ),
    GetPage(
      name: signInThreeScreen,
      page: () => SignInThreeScreen(),
      bindings: [SignInThreeBinding()],
    ),
    GetPage(
      name: registrationFourScreen,
      page: () => RegistrationFourScreen(),
      bindings: [RegistrationFourBinding()],
    ),
    GetPage(
      name: registrationFiveScreen,
      page: () => RegistrationFiveScreen(),
      bindings: [RegistrationFiveBinding()],
    ),
    GetPage(
      name: registrationSixScreen,
      page: () => RegistrationSixScreen(),
      bindings: [RegistrationSixBinding()],
    ),
    GetPage(
      name: forgetPasswordFiveScreen,
      page: () => ForgetPasswordFiveScreen(),
      bindings: [ForgetPasswordFiveBinding()],
    ),
    GetPage(
      name: otpSixScreen,
      page: () => OtpSixScreen(),
      bindings: [OtpSixBinding()],
    ),
    GetPage(
      name: signInThreeOneScreen,
      page: () => SignInThreeOneScreen(),
      bindings: [SignInThreeOneBinding()],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [EditProfileBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: homeOneScreen,
      page: () => HomeOneScreen(),
      bindings: [HomeOneBinding()],
    ),
    GetPage(
      name: orderContainerScreen,
      page: () => OrderContainerScreen(),
      bindings: [OrderContainerBinding()],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [OrderDetailsBinding()],
    ),
    GetPage(
      name: orderOneScreen,
      page: () => OrderOneScreen(),
      bindings: [OrderOneBinding()],
    ),
    GetPage(
      name: orderDetailsOneScreen,
      page: () => OrderDetailsOneScreen(),
      bindings: [OrderDetailsOneBinding()],
    ),
    GetPage(
      name: orderDetailsTwoScreen,
      page: () => OrderDetailsTwoScreen(),
      bindings: [OrderDetailsTwoBinding()],
    ),
    GetPage(
      name: orderDetailsThreeScreen,
      page: () => OrderDetailsThreeScreen(),
      bindings: [OrderDetailsThreeBinding()],
    ),
    GetPage(
      name: orderDetailsFourScreen,
      page: () => OrderDetailsFourScreen(),
      bindings: [OrderDetailsFourBinding()],
    ),
    GetPage(
      name: orderDetailsFiveScreen,
      page: () => OrderDetailsFiveScreen(),
      bindings: [OrderDetailsFiveBinding()],
    ),
    GetPage(
      name: myEarningTabContainerScreen,
      page: () => MyEarningTabContainerScreen(),
      bindings: [MyEarningTabContainerBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashOneScreen(),
      bindings: [SplashOneBinding()],
    )
  ];
}
