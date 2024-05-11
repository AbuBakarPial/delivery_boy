export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class SignInThreeTwoDialog extends StatelessWidget {
  SignInThreeTwoDialog(this.controller, {super.key});
  SignInThreeTwoController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 320.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 25.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup176,
                height: 114.adaptSize,
                width: 114.adaptSize,
              ),
              SizedBox(height: 20.v),
              SizedBox(
                width: 205.h,
                child: Text(
                  "msg_password_update".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 162.h,
                child: Text(
                  "msg_your_password_has".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
                onPressed: () {
                  onTapBacktohome();
                },
              )
            ],
          ),
        )
      ],
    );
  }

  onTapBacktohome() {
    Get.toNamed(
      AppRoutes.orderContainerScreen,
    );
  }
}
