export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillWhiteA,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "lbl_splash_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_get_started_two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.getStartedTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_sign_in_three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_registration_four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_registration_five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_registration_six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_forget_password_five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgetPasswordFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_otp_six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_sign_in_three_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInThreeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_sign_in_three_two".tr,
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              SignInThreeTwoDialog(
                                  Get.put(SignInThreeTwoController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_edit_profile2".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_home_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_order_details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_order_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_details_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_details_two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_details_three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.orderDetailsThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_details_four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.orderDetailsFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_order_details_five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.orderDetailsFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "msg_my_earning_tab".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myEarningTabContainerScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation() {
    return Container(
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
