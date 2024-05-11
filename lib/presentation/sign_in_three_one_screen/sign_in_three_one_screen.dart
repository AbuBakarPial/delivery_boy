export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class SignInThreeOneScreen extends GetWidget<SignInThreeOneController> {
  SignInThreeOneScreen({super.key});
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
                vertical: 35.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 19.h),
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
                    "msg_enter_new_password".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_please_enter_new".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 48.v),
                  Obx(
                    () => CustomTextFormField(
                      controller: controller.newpasswordController,
                      hintText: "msg_enter_new_password2".tr,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value =
                              !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameGray60001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 53.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: controller.isShowPassword.value,
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Obx(
                    () => CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: "msg_re_enter_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword1.value =
                              !controller.isShowPassword1.value;
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 14.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameGray60001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 53.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: controller.isShowPassword1.value,
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                    text: "lbl_save".tr,
                    onPressed: () {
                      onTapSave();
                    },
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapImgArrowleftone() {
    Get.back();
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.orderContainerScreen,
    );
  }
}
