export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
export 'widgets/widgets.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          height: 760.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(left: 19.h),
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  decoration: AppDecoration.outlineBlack9001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              padding: EdgeInsets.only(left: 17.h),
                              child: Column(
                                children: [
                                  Text(
                                    "lbl_md_tanjid".tr,
                                    style: CustomTextStyles.titleLarge_1,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_0171111545454".tr,
                                    style: CustomTextStyles
                                        .titleMediumErrorContainer,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Divider(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                      SizedBox(height: 65.v),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "msg_completed_delivery".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClock,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "msg_pending_delivery".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "msg_cancelled_delivery".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame24x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "lbl_my_earning".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLockErrorcontainer,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_profile".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame1,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                              ),
                              child: Text(
                                "lbl_logout2".tr,
                                style: CustomTextStyles
                                    .titleMediumErrorContainerMedium,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 19.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildWelcomeStack(),
                      const Spacer(
                        flex: 32,
                      ),
                      _buildFifteenTextGrid(),
                      const Spacer(
                        flex: 67,
                      ),
                      _buildHomeRow()
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

  Widget _buildWelcomeStack() {
    return SizedBox(
      height: 140.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 20.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 26.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse1250x50,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    margin: EdgeInsets.only(bottom: 16.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      bottom: 18.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_wellcome".tr,
                          style: CustomTextStyles.titleMediumGray700,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_md_tanjid".tr,
                          style: CustomTextStyles.titleLargeWhiteA700,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack90024x24,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      right: 1.h,
                      bottom: 42.v,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 45.h,
                top: 100.v,
                right: 45.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "msg_are_you_avaibele".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                  Obx(
                    () => CustomSwitch(
                      value: controller.isSelectedSwitch.value,
                      onChange: (value) {
                        controller.isSelectedSwitch.value = value;
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFifteenTextGrid() {
    return Padding(
      padding: EdgeInsets.only(
        left: 52.h,
        right: 45.h,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 100.v,
            crossAxisCount: 2,
            mainAxisSpacing: 34.h,
            crossAxisSpacing: 34.h,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller
              .homeModelObj.value.fifteentextgridItemList.value.length,
          itemBuilder: (context, index) {
            FifteentextgridItemModel model = controller
                .homeModelObj.value.fifteentextgridItemList.value[index];
            return FifteentextgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  Widget _buildHomeRow() {
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
}
