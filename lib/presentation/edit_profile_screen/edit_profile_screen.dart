export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                vertical: 22.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 120.adaptSize,
                    width: 120.adaptSize,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse12,
                          height: 120.adaptSize,
                          width: 120.adaptSize,
                          radius: BorderRadius.circular(
                            60.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 13.h,
                            bottom: 5.v,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 57.v),
                  _buildEditProfileName(),
                  SizedBox(height: 15.v),
                  _buildEditProfileEmail(),
                  SizedBox(height: 15.v),
                  _buildEditProfilePhoneNumber(),
                  SizedBox(height: 15.v),
                  _buildEditProfileAddress(),
                  SizedBox(height: 15.v),
                  _buildEditProfilePassword(),
                  SizedBox(height: 15.v),
                  _buildEditProfileNewPassword(),
                  SizedBox(height: 50.v),
                  _buildEditProfileSaveChange(),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEditProfileName() {
    return CustomTextFormField(
      controller: controller.editProfileNameController,
      hintText: "lbl_enter_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  Widget _buildEditProfileEmail() {
    return CustomTextFormField(
      controller: controller.editProfileEmailController,
      hintText: "msg_enter_email_address".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  Widget _buildEditProfilePhoneNumber() {
    return CustomTextFormField(
      controller: controller.editProfilePhoneNumberController,
      hintText: "msg_enter_phone_number".tr,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  Widget _buildEditProfileAddress() {
    return CustomTextFormField(
      controller: controller.editProfileAddressController,
      hintText: "lbl_full_address".tr,
    );
  }

  Widget _buildEditProfilePassword() {
    return CustomTextFormField(
      controller: controller.editProfilePasswordController,
      hintText: "lbl_old_password".tr,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  Widget _buildEditProfileNewPassword() {
    return CustomTextFormField(
      controller: controller.editProfileNewPasswordController,
      hintText: "lbl_new_password".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  Widget _buildEditProfileSaveChange() {
    return CustomElevatedButton(
      text: "lbl_save_change".tr,
    );
  }
}
