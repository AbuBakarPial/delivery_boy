export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class ForgetPasswordFiveScreen extends GetWidget<ForgetPasswordFiveController> {
  ForgetPasswordFiveScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 35.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 15.v,
                            width: 10.h,
                            margin: EdgeInsets.only(bottom: 92.v),
                            onTap: () {
                              onTapImgArrowleftone();
                            },
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgDeliveryLogo2,
                            height: 103.v,
                            width: 160.h,
                            margin: EdgeInsets.only(
                              left: 50.h,
                              top: 5.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 45.v),
                  Text(
                    "lbl_forget_password".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "msg_enter_your_information".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 33.v),
                  _buildRowUserOne(),
                  SizedBox(height: 20.v),
                  CustomTextFormField(
                    controller: controller.emailController,
                    hintText: "msg_send_otp_via_em".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      padding: EdgeInsets.all(13.h),
                      margin: EdgeInsets.fromLTRB(20.h, 9.v, 10.h, 9.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(
                          25.h,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 68.v,
                    ),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                      bottom: 13.v,
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueButton(),
      ),
    );
  }

  Widget _buildRowUserOne() {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(16.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
            ),
          ),
          Container(
            width: 141.h,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "msg_send_otp_via_sms_880".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContinueButton() {
    return CustomElevatedButton(
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 31.v,
      ),
      onPressed: () {
        onTapContinueButton();
      },
    );
  }

  onTapImgArrowleftone() {
    Get.back();
  }

  onTapContinueButton() {
    Get.toNamed(
      AppRoutes.otpSixScreen,
    );
  }
}
