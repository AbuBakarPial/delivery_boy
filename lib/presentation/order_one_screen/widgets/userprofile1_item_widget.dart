import '../../presentation.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj, {Key? key})
      : super(
          key: key,
        );
  Userprofile1ItemModel userprofile1ItemModelObj;
  var controller = Get.find<OrderOneController>();
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
                        userprofile1ItemModelObj.addressText!.value,
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
                        userprofile1ItemModelObj.addressText1!.value,
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
                              userprofile1ItemModelObj.phoneNumber!.value,
                              style: CustomTextStyles.titleMediumBlack90016,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Obx(
                              () => Text(
                                userprofile1ItemModelObj.timeAgo!.value,
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
                _buildDistanceButton()
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
                        userprofile1ItemModelObj.paymentMethod!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      userprofile1ItemModelObj.paymentAmount!.value,
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
              children: [_buildDetailsButton(), _buildDeliveryButton()],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDistanceButton() {
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

  Widget _buildDetailsButton() {
    return CustomOutlinedButton(
      height: 26.v,
      width: 79.h,
      text: "lbl_view_details".tr,
      buttonTextStyle: CustomTextStyles.labelMediumBlack900,
    );
  }

  Widget _buildDeliveryButton() {
    return CustomElevatedButton(
      height: 26.v,
      width: 79.h,
      text: "lbl_delivery".tr,
      buttonStyle: CustomButtonStyles.outlineBlackTL51,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }
}
