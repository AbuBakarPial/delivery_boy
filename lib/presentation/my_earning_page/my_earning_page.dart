export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class MyEarningPage extends StatelessWidget {
  MyEarningPage({super.key});
  MyEarningController controller =
      Get.put(MyEarningController(MyEarningModel().obs));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 47.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftBlack900,
                            height: 15.v,
                            width: 10.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Text(
                            "msg_mar_14_2024_mar".tr,
                            style: CustomTextStyles.labelLargeInter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgForwardBlack900,
                            height: 15.v,
                            width: 10.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildSectionOne(),
                    SizedBox(height: 25.v),
                    _buildSectionTwo()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionOne() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 15.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_10002".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_800".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_600".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_400".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_200".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_0".tr,
                  style: CustomTextStyles.labelLargeInter,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 15.v,
            ),
            child: Column(
              children: [
                const Divider(),
                SizedBox(height: 30.v),
                const Divider(),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 107.v,
                  width: 246.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 18.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Divider(),
                              SizedBox(height: 30.v),
                              const Divider(),
                              SizedBox(height: 30.v),
                              const Divider()
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector14,
                        height: 107.v,
                        width: 240.h,
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                const Divider(),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_tue".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_wed".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_thu".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_fri".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_sat".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_sun".tr,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      Text(
                        "lbl_mon".tr,
                        style: CustomTextStyles.labelLargeInter,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_summary".tr,
          style: CustomTextStyles.titleMediumBlack90016,
        ),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame9,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 3.h),
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_7599_00".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                    height: 26.v,
                    width: 123.h,
                    text: "msg_earned_this_week".tr,
                    buttonTextStyle: CustomTextStyles.labelLargeInterWhiteA700,
                  ),
                  SizedBox(height: 10.v)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCheckmarkBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_3500".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        CustomElevatedButton(
                          height: 26.v,
                          width: 123.h,
                          text: "msg_earned_this_week".tr,
                          margin: EdgeInsets.only(left: 1.h),
                          buttonTextStyle:
                              CustomTextStyles.labelLargeInterWhiteA700,
                        ),
                        SizedBox(height: 1.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 37.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 8.v,
                                width: 9.h,
                                margin: EdgeInsets.only(bottom: 16.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text(
                                  "lbl_0".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        CustomElevatedButton(
                          height: 26.v,
                          width: 77.h,
                          text: "lbl_on_going".tr,
                          margin: EdgeInsets.only(left: 1.h),
                          buttonTextStyle:
                              CustomTextStyles.labelLargeInterWhiteA700,
                        ),
                        SizedBox(height: 1.v)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
