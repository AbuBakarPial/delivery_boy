export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderDetailsOneScreen extends GetWidget<OrderDetailsOneController> {
  const OrderDetailsOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3.v),
              _buildPickupLocation(),
              SizedBox(height: 20.v),
              Text(
                "lbl_order_details".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 9.v),
              _buildTShirt(),
              SizedBox(height: 22.v),
              _buildDelivery()
            ],
          ),
        ),
        bottomNavigationBar: _buildConfirm(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 20.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_order_details".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }

  Widget _buildPickupLocation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_pickup_location".tr,
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 7.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 23.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            children: [
              Container(
                width: 123.h,
                margin: EdgeInsets.only(top: 3.v),
                child: Text(
                  "msg_house_03_road_07".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              const Spacer(),
              Expanded(
                child: _buildCallFour(
                  callText: "lbl_call".tr,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: _buildLinkedinThree(
                    locationText: "lbl_location".tr,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildTShirt() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4449,
                  height: 74.v,
                  width: 71.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 26.v,
                    bottom: 27.v,
                  ),
                  child: Text(
                    "lbl_t_shirt".tr,
                    style: CustomTextStyles.titleMediumGray800,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30.v,
                    bottom: 26.v,
                  ),
                  child: Text(
                    "lbl_qty_1".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Divider(
            color: theme.colorScheme.onError,
          ),
          SizedBox(height: 18.v),
          _buildYourEarning(
            earningText: "msg_amount_to_be_collected".tr,
            priceText: "lbl_10_00".tr,
          ),
          SizedBox(height: 13.v),
          _buildYourEarning(
            earningText: "lbl_your_earning".tr,
            priceText: "lbl_02_00".tr,
          ),
          SizedBox(height: 13.v),
          _buildYourEarning(
            earningText: "lbl_payment_method".tr,
            priceText: "msg_cash_on_delivery".tr,
          )
        ],
      ),
    );
  }

  Widget _buildDelivery() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_delivery_details".tr,
          style: CustomTextStyles.titleMediumBlack900,
        ),
        SizedBox(height: 7.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Column(
                  children: [
                    Text(
                      "msg_mirpur_dhaka_1216".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 17.v),
                    Text(
                      "lbl_880_1234567890".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 18.v),
                    SizedBox(
                      width: 123.h,
                      child: Text(
                        "msg_house_12_road_09".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 37.v),
                  child: _buildCallFour(
                    callText: "lbl_call".tr,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(22.h, 36.v, 2.h, 36.v),
                  child: _buildLinkedinThree(
                    locationText: "lbl_location".tr,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildConfirm() {
    return CustomElevatedButton(
      text: "msg_confirm_delivery".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 24.v,
      ),
    );
  }

  Widget _buildYourEarning({
    required String earningText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            earningText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleMediumGray800.copyWith(
            color: appTheme.gray800,
          ),
        )
      ],
    );
  }

  Widget _buildCallFour({required String callText}) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCall,
          height: 17.adaptSize,
          width: 17.adaptSize,
        ),
        SizedBox(height: 5.v),
        Text(
          callText,
          style: CustomTextStyles.labelLargeInterGray800.copyWith(
            color: appTheme.gray800,
          ),
        )
      ],
    );
  }

  Widget _buildLinkedinThree({required String locationText}) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLinkedin,
          height: 18.v,
          width: 16.h,
        ),
        SizedBox(height: 5.v),
        Text(
          locationText,
          style: CustomTextStyles.labelLargeInterGray800.copyWith(
            color: appTheme.gray800,
          ),
        )
      ],
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
