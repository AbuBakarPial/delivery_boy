export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OtpSixScreen extends GetWidget<OtpSixController> {
  const OtpSixScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
              SizedBox(height: 42.v),
              Text(
                "msg_verification_code".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 223.h,
                child: Text(
                  "msg_please_enter_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_resend_code".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_00_55s".tr,
                          style: CustomTextStyles.bodyMediumPrimary_1,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              CustomOutlinedButton(
                text: "lbl_resend".tr,
                buttonStyle: CustomButtonStyles.outlineGrayTL10,
                buttonTextStyle: CustomTextStyles.titleMediumGray60001,
              ),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  onTapImgArrowleftone() {
    Get.back();
  }
}
