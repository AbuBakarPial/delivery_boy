export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';
import 'package:delivery_boy/presentation/sign_in_three_screen/sign_in_three_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegistrationFiveScreen extends GetWidget<RegistrationFiveController> {
  RegistrationFiveScreen({super.key});
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
                horizontal: 20.h,
                vertical: 24.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDeliveryLogo2,
                    height: 103.v,
                    width: 160.h,
                  ),
                  SizedBox(height: 22.v),
                  _buildRegistrationColumn(),
                  SizedBox(height: 33.v),
                  Text(
                    "msg_select_your_vehicle".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 14.h),
                            child: _buildCarColumn(
                              carImage: ImageConstant.imgFrame,
                              carText: "lbl_bike".tr,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14.h),
                            child: _buildCarColumn(
                              carImage: ImageConstant.imgCar,
                              carText: "lbl_car".tr,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: _buildCarColumn(
                              carImage: ImageConstant.imgFrameBlack900,
                              carText: "lbl_truck".tr,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 53.v),
                  CustomTextFormField(
                    controller: controller.vehiclenumberController,
                    hintText: "msg_your_vehicle_number".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.number,
                    validator: (value) {
                      if (!isNumeric(value)) {
                        return "err_msg_please_enter_valid_number".tr;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                    onPressed: () => Get.offNamed(AppRoutes.signInThreeScreen),
                    text: "lbl_register".tr,
                  ),
                  SizedBox(height: 10.v),
                  InkWell(
                   onTap: ()=> Get.toNamed(AppRoutes.signInThreeScreen),     
                     child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_a_member2".tr,
                            style: CustomTextStyles.bodyMediumPrimaryContainer,
                          ),
                          
                          TextSpan(
                            text: "lbl_login".tr,
                            style: CustomTextStyles.bodyMediumPrimary15,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
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

  Widget _buildRegistrationColumn() {
    return Column(
      children: [
        Text(
          "msg_register_your_new".tr,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 6.v),
        Text(
          "msg_enter_your_information".tr,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 23.v),
        CustomTextFormField(
          controller: controller.drivingLicenseNController,
          hintText: "msg_your_driving_license".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        ),
        SizedBox(height: 17.v),
        CustomElevatedButton(
          height: 24.v,
          width: 90.h,
          text: "lbl_upload_file".tr,
          rightIcon: Container(
            margin: EdgeInsets.only(left: 10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 10.v,
              width: 16.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL3,
          buttonTextStyle: CustomTextStyles.bodySmallRobotoWhiteA700,
        ),
        SizedBox(height: 7.v),
        Text(
          "msg_upload_your_driving".tr,
          style: theme.textTheme.bodySmall,
        )
      ],
    );
  }

  Widget _buildCarColumn({
    required String carImage,
    required String carText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: carImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 2.v),
          Text(
            carText,
            style: CustomTextStyles.titleMediumBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          )
        ],
      ),
    );
  }
}
