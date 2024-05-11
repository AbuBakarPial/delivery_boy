export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class GetStartedTwoScreen extends GetWidget<GetStartedTwoController> {
  const GetStartedTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 33.h,
            vertical: 40.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDeliveryLogo2,
                height: 103.v,
                width: 160.h,
              ),
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgDeliveryVanDr,
                height: 185.v,
                width: 293.h,
                radius: BorderRadius.only(
                  bottomRight: Radius.circular(10.h),
                ),
              ),
              SizedBox(height: 42.v),
              Container(
                width: 257.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 18.h,
                ),
                child: Text(
                  "msg_get_your_parcel".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 25.v),
              Container(
                width: 212.h,
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 41.h,
                ),
                child: Text(
                  "msg_we_pack_and_ship".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(),
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 31.v,
      ),
      onPressed: () {
        onTapGetStartedButton();
      },
    );
  }

  onTapGetStartedButton() {
    Get.toNamed(
      AppRoutes.signInThreeScreen,
    );
  }
}
