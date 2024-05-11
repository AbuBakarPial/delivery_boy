export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class HomeOneScreen extends GetWidget<HomeOneController> {
  const HomeOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          height: 760.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildWellcomeRow(),
                      const Spacer(),
                      SizedBox(height: 19.v),
                      _buildHomeOneRow()
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 665.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 27.v),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 631.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVecteezyDelive,
                                height: 631.v,
                                width: 360.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 45.h,
                                    top: 39.v,
                                    right: 45.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.h,
                                          vertical: 9.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9002
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder20,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 9.h,
                                                top: 3.v,
                                              ),
                                              child: Text(
                                                "msg_are_you_avaibele".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack900,
                                              ),
                                            ),
                                            Obx(
                                              () => CustomSwitch(
                                                value: controller
                                                    .isSelectedSwitch.value,
                                                onChange: (value) {
                                                  controller.isSelectedSwitch
                                                      .value = value;
                                                },
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 102.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 17.h),
                                                child: _buildFifteenColumn(
                                                  textValue: "lbl_15".tr,
                                                  textValue1:
                                                      "msg_assign_to_pickup".tr,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 17.h),
                                                child: _buildFifteenColumn(
                                                  textValue: "lbl_15".tr,
                                                  textValue1:
                                                      "msg_assign_for_delivery"
                                                          .tr,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 28.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 17.h),
                                                child: _buildFifteenColumn(
                                                  textValue: "lbl_15".tr,
                                                  textValue1:
                                                      "lbl_delivered".tr,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 17.h),
                                                child: _buildFifteenColumn(
                                                  textValue: "lbl_0".tr,
                                                  textValue1:
                                                      "lbl_cancelled".tr,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1250x50,
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                radius: BorderRadius.circular(
                                  25.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 19.h,
                                  top: 22.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_md_tanjid".tr,
                                  style: CustomTextStyles.titleLargeWhiteA700,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWellcomeRow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 68.h,
              bottom: 46.v,
            ),
            child: Text(
              "lbl_wellcome".tr,
              style: CustomTextStyles.titleMediumGray700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameBlack90024x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 42.v),
          )
        ],
      ),
    );
  }

  Widget _buildHomeOneRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Text(
                  "lbl_home".tr,
                  style: CustomTextStyles.labelLargePrimary,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Text(
                  "lbl_order".tr,
                  style: theme.textTheme.labelLarge,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNavNotification,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Text(
                  "lbl_notification".tr,
                  style: theme.textTheme.labelLarge,
                )
              ],
            ),
          ),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 1.v),
              Text(
                "lbl_setting".tr,
                style: theme.textTheme.labelLarge,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildFifteenColumn({
    required String textValue,
    required String textValue1,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.gradientOrangeToDeepOrangeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textValue,
            style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 58.h,
            child: Text(
              textValue1,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeInterWhiteA700_1.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
