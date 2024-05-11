import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/order_page/controller/order_controller.dart';
import 'package:delivery_boy/presentation/order_page/models/userprofile_item_model.dart';
import 'package:delivery_boy/theme/custom_button_style.dart';
import 'package:delivery_boy/widgets/app_bar/custom_elevated_button.dart';
import 'package:delivery_boy/widgets/app_bar/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {super.key});
  UserprofileItemModel userprofileItemModelObj;
  var controller = Get.find<OrderController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 97.v,
            width: 286.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 101.h,
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.address!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 101.h,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.house03road!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Text(
                              userprofileItemModelObj.phoneNumber!.value,
                              style: CustomTextStyles.titleMediumBlack90016,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Obx(
                              () => Text(
                                userprofileItemModelObj.timeAgo!.value,
                                style: CustomTextStyles.labelLargeInterGray800,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 11.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1577,
                        height: 10.v,
                        width: 247.h,
                      )
                    ],
                  ),
                ),
                _buildDistance()
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 48.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.paymentMethod!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      userprofileItemModelObj.amount!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 36.h,
              right: 32.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildViewDetailsButton(), _buildPickupButton()],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDistance() {
    return CustomElevatedButton(
      height: 37.v,
      width: 48.h,
      text: "lbl_1km".tr,
      margin: EdgeInsets.only(top: 15.v),
      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
      alignment: Alignment.topCenter,
    );
  }

  Widget _buildViewDetailsButton() {
    return CustomOutlinedButton(
      height: 26.v,
      width: 79.h,
      text: "lbl_view_details".tr,
      buttonTextStyle: CustomTextStyles.labelMediumBlack900,
    );
  }

  Widget _buildPickupButton() {
    return CustomElevatedButton(
      height: 26.v,
      width: 79.h,
      text: "lbl_pickup".tr,
      buttonStyle: CustomButtonStyles.outlineBlackTL5,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }
}
