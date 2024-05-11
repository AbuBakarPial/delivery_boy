export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderDetailsTwoScreen extends GetWidget<OrderDetailsTwoController> {
  const OrderDetailsTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 18.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_your_activities".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
              SizedBox(height: 38.v),
              _buildStackReachedThe(),
              SizedBox(height: 80.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 9.h,
                ),
                child: CustomTextFormField(
                  controller: controller.notesvalueoneController,
                  hintText: "lbl_notes".tr,
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  maxLines: 6,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonNext(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 20.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_order_number_tf74562581".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }

  Widget _buildStackReachedThe() {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: const EdgeInsets.all(0),
        color: theme.colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Container(
          height: 223.v,
          width: 319.h,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFramePrimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 5.h),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 49.h,
                    right: 5.h,
                    bottom: 7.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildRowFontDoor(
                        titleText: "msg_reached_the_location".tr,
                      ),
                      SizedBox(height: 20.v),
                      _buildRowFontDoor(
                        titleText: "lbl_font_door".tr,
                      ),
                      SizedBox(height: 20.v),
                      _buildRowFontDoor(
                        titleText: "msg_delivered_to_the".tr,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: SizedBox(
                    height: 135.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 257.h,
                    bottom: 7.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgForward,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgForward,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgForward,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgForward,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        top: 5.v,
                      ),
                      child: Text(
                        "msg_picked_up_the_order".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonNext() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 24.v,
      ),
    );
  }

  Widget _buildRowFontDoor({required String titleText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(
            titleText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrame3,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 140.h),
        )
      ],
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
