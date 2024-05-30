export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class SignInThreeScreen extends GetWidget<SignInThreeController> {
  SignInThreeScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 37.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 3.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgDeliveryLogo2,
                    height: 103.v,
                    width: 160.h,
                  ),
                  SizedBox(height: 45.v),
                  Text(
                    "msg_let_s_get_you_login".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_enter_your_information".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 48.v),
                  _buildPhone(),
                  SizedBox(height: 20.v),
                  _buildPassword(),
                  SizedBox(height: 11.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        onTapTxtForgetpassword();
                      },
                      child: Text(
                        "msg_forget_password".tr,
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 38.v),
                  _buildLogin(),
                  SizedBox(height: 20.v),
                  _buildStacklineone(),
                  SizedBox(height: 20.v),
                  _buildRowgoogle(),
                  SizedBox(height: 44.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtNotourmemberyet();
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_not_our_member_yet2".tr,
                            style: CustomTextStyles.bodyMediumPrimaryContainer,
                          ),
                          TextSpan(
                            text: "lbl_register_now".tr,
                            style: CustomTextStyles.bodyMediumPrimary15,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhone() {
    return CustomTextFormField(
      controller: controller.phoneController,
      hintText: "lbl_email_or_phone".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_password".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  Widget _buildLogin() {
    return CustomElevatedButton(
      text: "lbl_login".tr,
      onPressed: () {
        onTapLogin();
      },
    );
  }

  Widget _buildOrLoginWith() {
    return CustomElevatedButton(
      height: 37.v,
      width: 104.h,
      text: "lbl_or_login_with".tr,
      buttonStyle: CustomButtonStyles.fillWhiteA,
      buttonTextStyle: theme.textTheme.bodyMedium!,
      alignment: Alignment.center,
    );
  }

  Widget _buildStacklineone() {
    return SizedBox(
      height: 37.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.v),
              child: SizedBox(
                width: 320.h,
                child: Divider(
                  color: appTheme.gray60001,
                ),
              ),
            ),
          ),
          _buildOrLoginWith()
        ],
      ),
    );
  }

  Widget _buildGoogleButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 46.v,
        text: "Facebook".tr,
        margin: EdgeInsets.only(right: 8.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 10.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1605,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineGray,
      ),
    );
  }

  Widget _buildFacebookButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 46.v,
        text: "lbl_google".tr,
        margin: EdgeInsets.only(left: 8.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 10.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1606,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineGray,
      ),
    );
  }

  Widget _buildRowgoogle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildFacebookButton(), _buildGoogleButton() ],
    );
  }

  onTapTxtForgetpassword() {
    Get.toNamed(
      AppRoutes.forgetPasswordFiveScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.orderContainerScreen,
    );
  }

  onTapTxtNotourmemberyet() {
    Get.toNamed(
      AppRoutes.registrationFourScreen,
    );
  }
}
