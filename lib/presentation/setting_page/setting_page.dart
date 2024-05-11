export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class SettingPage extends StatelessWidget {
  SettingPage({super.key});
  SettingController controller = Get.put(SettingController(SettingModel().obs));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse12,
                height: 120.adaptSize,
                width: 120.adaptSize,
                radius: BorderRadius.circular(
                  60.h,
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "lbl_md_tanjid".tr,
                style: CustomTextStyles.titleLarge_1,
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_0171111545454".tr,
                style: CustomTextStyles.titleMediumErrorContainer,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                width: 150.h,
                text: "lbl_edit_profile".tr,
              ),
              SizedBox(height: 74.v),
              _buildRowprivacypolic(
                imageOne: ImageConstant.imgFrameErrorContainer,
                privacypolicy: "lbl_change_password".tr,
              ),
              SizedBox(height: 40.v),
              _buildRowprivacypolic(
                imageOne: ImageConstant.imgFrameErrorContainer24x24,
                privacypolicy: "lbl_privacy_policy".tr,
              ),
              SizedBox(height: 40.v),
              _buildRowprivacypolic(
                imageOne: ImageConstant.imgAbout,
                privacypolicy: "lbl_about".tr,
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 24.v,
                      width: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "lbl_log_out".tr,
                        style: CustomTextStyles.titleMediumRobotoOnPrimary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowprivacypolic({
    required String imageOne,
    required String privacypolicy,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: imageOne,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 3.v,
          ),
          child: Text(
            privacypolicy,
            style: CustomTextStyles.titleMediumRobotoOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        const Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeft,
          height: 15.v,
          width: 10.h,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        )
      ],
    );
  }
}
