export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class OrderDetailsThreeScreen extends GetWidget<OrderDetailsThreeController> {
  OrderDetailsThreeScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 9.v,
              ),
              child: Column(
                children: [
                  _buildNameEditText(),
                  SizedBox(height: 15.v),
                  _buildMustafizurEditText(),
                  SizedBox(height: 58.v),
                  _buildRowvectornine(),
                  SizedBox(height: 53.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: _buildPhotoColumn(
                            userImage: ImageConstant.imgFrame4,
                            photoText: "lbl_notes".tr,
                          ),
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary24x24,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "lbl_signature".tr,
                              style: CustomTextStyles.labelLargePrimary,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: _buildPhotoColumn(
                            userImage: ImageConstant.imgFrame5,
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
          ),
        ),
        bottomNavigationBar: _buildRowcancel(),
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

  Widget _buildNameEditText() {
    return CustomTextFormField(
      controller: controller.nameEditTextController,
      hintText: "msg_write_the_signer_s".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 8.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
      filled: true,
      fillColor: theme.colorScheme.onPrimaryContainer,
    );
  }

  Widget _buildMustafizurEditText() {
    return CustomTextFormField(
      controller: controller.mustafizurEditTextController,
      hintText: "msg_mustafizur_rahaman".tr,
      hintStyle: CustomTextStyles.titleMediumGray800Medium,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(10.h),
      borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainerTL10,
      filled: true,
      fillColor: theme.colorScheme.onPrimaryContainer,
    );
  }

  Widget _buildRowvectornine() {
    return Container(
      margin: EdgeInsets.only(
        left: 4.h,
        right: 6.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 41.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 42.v,
              bottom: 37.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector9,
                  height: 2.v,
                  width: 1.h,
                  margin: EdgeInsets.only(right: 8.h),
                ),
                SizedBox(height: 1.v),
                SizedBox(
                  height: 112.v,
                  width: 145.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 67.v,
                        width: 86.h,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 50.v,
                          width: 42.h,
                          margin: EdgeInsets.only(
                            top: 22.v,
                            right: 22.h,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSettingsBlack900,
                                height: 50.v,
                                width: 42.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSettingsBlack900,
                                height: 6.v,
                                width: 16.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                  left: 9.h,
                                  top: 14.v,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 18.v,
                        width: 15.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 31.v,
                          right: 22.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector5,
                        height: 2.v,
                        width: 16.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 31.v,
                          right: 12.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 4.v,
                        width: 17.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 16.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrouDownBlack900,
                        height: 29.v,
                        width: 14.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 1.h),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 16.v,
              bottom: 137.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlack90020x18,
                  height: 20.v,
                  width: 18.h,
                  alignment: Alignment.centerRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSave,
                  height: 21.v,
                  width: 29.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 5.v,
                  width: 7.h,
                )
              ],
            ),
          ),
          Container(
            height: 22.v,
            width: 23.h,
            margin: EdgeInsets.only(
              left: 4.h,
              bottom: 173.v,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlack90015x10,
                  height: 15.v,
                  width: 10.h,
                  alignment: Alignment.bottomLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector13,
                  height: 13.v,
                  width: 22.h,
                  alignment: Alignment.topCenter,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCancelButton() {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 14.h),
        buttonStyle: CustomButtonStyles.outlineRed,
        buttonTextStyle: CustomTextStyles.titleMediumRed900,
      ),
    );
  }

  Widget _buildDoneButton() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_done".tr,
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }

  Widget _buildRowcancel() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 24.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildCancelButton(), _buildDoneButton()],
      ),
    );
  }

  Widget _buildPhotoColumn({
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
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
