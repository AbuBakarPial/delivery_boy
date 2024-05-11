export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderDetailsFourScreen extends GetWidget<OrderDetailsFourController> {
  const OrderDetailsFourScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              _buildColumnAddPhotos(),
              SizedBox(height: 46.v),
              _buildColumnOne(),
              SizedBox(height: 50.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: _buildColumnPhoto(
                        userImage: ImageConstant.imgFrame4,
                        photoText: "lbl_notes".tr,
                      ),
                    ),
                    Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame7,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_signature".tr,
                          style: theme.textTheme.labelLarge,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: _buildColumnPhoto(
                        userImage: ImageConstant.imgFrame8,
                        photoText: "lbl_photo".tr,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildRowCancel(),
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

  Widget _buildColumnAddPhotos() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_add_photos".tr,
            style: CustomTextStyles.titleMediumBlack90016,
          ),
          SizedBox(height: 19.v),
          DottedBorder(
            color: theme.colorScheme.primary,
            padding: EdgeInsets.only(
              left: 2.h,
              top: 2.v,
              right: 2.h,
              bottom: 2.v,
            ),
            strokeWidth: 2.h,
            radius: const Radius.circular(20),

            //borderType: BorderType.RRect,
            dashPattern: const [2, 2],
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 145.h,
                vertical: 79.v,
              ),
              decoration: AppDecoration.outlinePrimary2.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame6,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnOne() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: DottedBorder(
        color: theme.colorScheme.primary,
        padding: EdgeInsets.only(
          left: 2.h,
          top: 2.v,
          right: 2.h,
          bottom: 2.v,
        ),
        strokeWidth: 2.h,
        radius: const Radius.circular(20),
        borderType: BorderType.RRect,
        dashPattern: const [2, 2],
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 145.h,
            vertical: 79.v,
          ),
          decoration: AppDecoration.outlinePrimary2.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame6,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
      ),
    );
  }

  Widget _buildRowCancel() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 24.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_cancel".tr,
              margin: EdgeInsets.only(right: 14.h),
              buttonStyle: CustomButtonStyles.outlineRed,
              buttonTextStyle: CustomTextStyles.titleMediumRed900,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_done".tr,
              margin: EdgeInsets.only(left: 14.h),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnPhoto({
    required String userImage,
    required String photoText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Text(
          photoText,
          style: CustomTextStyles.labelLargePrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
