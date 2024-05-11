export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class RegistrationSixScreen extends GetWidget<RegistrationSixController> {
  const RegistrationSixScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6.v),
              Text(
                "lbl_font".tr,
                style: CustomTextStyles.titleLargeRobotoGray70001,
              ),
              SizedBox(height: 23.v),
              _buildColumnView(),
              SizedBox(height: 27.v),
              Text(
                "lbl_back".tr,
                style: CustomTextStyles.titleLargeRobotoGray70001,
              ),
              SizedBox(height: 19.v),
              _buildColumnViewOne(),
              SizedBox(height: 56.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 53.h,
                  right: 43.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(20.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameWhiteA700,
                      ),
                    ),
                    CustomIconButton(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(20.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameWhiteA70080x80,
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

  Widget _buildFontText() {
    return Container(
      height: 152.v,
      width: 282.h,
      decoration: BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }

  Widget _buildColumnView() {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: DottedBorder(
        color: theme.colorScheme.primary,
        padding: EdgeInsets.only(
          left: 3.h,
          top: 3.v,
          right: 3.h,
          bottom: 3.v,
        ),
        strokeWidth: 3.h,
        radius: const Radius.circular(12),
        borderType: BorderType.RRect,
        dashPattern: const [100, 100],
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: _buildFontText(),
        ),
      ),
    );
  }

  Widget _buildColumnViewOne() {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: DottedBorder(
        color: theme.colorScheme.primary,
        padding: EdgeInsets.only(
          left: 3.h,
          top: 3.v,
          right: 3.h,
          bottom: 3.v,
        ),
        strokeWidth: 3.h,
        radius: const Radius.circular(12),
        borderType: BorderType.RRect,
        dashPattern: const [100, 100],
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 152.v,
            width: 282.h,
            decoration: BoxDecoration(
              color: appTheme.orange50,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
