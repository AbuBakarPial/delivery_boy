export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderDetailsFiveScreen extends GetWidget<OrderDetailsFiveController> {
  const OrderDetailsFiveScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 39.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1592,
                height: 139.adaptSize,
                width: 139.adaptSize,
              ),
              SizedBox(height: 12.v),
              Text(
                "lbl_thank_you".tr,
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 11.v),
              Text(
                "msg_your_next_delivery".tr,
                style: CustomTextStyles.titleMediumBlack90016,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 101.h,
                child: Text(
                  "msg_house_05_road_12".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_drive_to_the_next".tr,
                style: CustomTextStyles.titleSmallPrimary,
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildViewDeliveries(),
      ),
    );
  }

  Widget _buildViewDeliveries() {
    return CustomElevatedButton(
      text: "lbl_view_deliveries".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 24.v,
      ),
    );
  }
}
