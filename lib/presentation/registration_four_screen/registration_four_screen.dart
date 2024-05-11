export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class RegistrationFourScreen extends GetWidget<RegistrationFourController> {
  RegistrationFourScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
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
                vertical: 24.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDeliveryLogo2,
                    height: 103.v,
                    width: 160.h,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "msg_register_your_new".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_enter_your_information".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 23.v),
                  _buildNameField(),
                  SizedBox(height: 15.v),
                  _buildEmailField(),
                  SizedBox(height: 15.v),
                  _buildPhoneNumberField(),
                  SizedBox(height: 15.v),
                  CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 10.v,
                        width: 15.h,
                      ),
                    ),
                    hintText: "lbl_select_country".tr,
                    items: controller
                        .registrationFourModelObj.value.dropdownItemList.value,
                  ),
                  SizedBox(height: 15.v),
                  _buildAddressField(),
                  SizedBox(height: 15.v),
                  _buildPasswordField(),
                  SizedBox(height: 25.v),
                  _buildNextButton(),
                  SizedBox(height: 10.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_already_a_member2".tr,
                          style: CustomTextStyles.bodyMediumPrimaryContainer,
                        ),
                        TextSpan(
                          text: "lbl_login".tr,
                          style: CustomTextStyles.bodyMediumPrimary15,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNameField() {
    return CustomTextFormField(
      controller: controller.nameFieldController,
      hintText: "lbl_enter_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  Widget _buildEmailField() {
    return CustomTextFormField(
      controller: controller.emailFieldController,
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

  Widget _buildPhoneNumberField() {
    return CustomTextFormField(
      controller: controller.phoneNumberFieldController,
      hintText: "msg_enter_phone_number".tr,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.v,
      ),
    );
  }

  Widget _buildAddressField() {
    return CustomTextFormField(
      controller: controller.addressFieldController,
      hintText: "lbl_full_address".tr,
    );
  }

  Widget _buildPasswordField() {
    return CustomTextFormField(
      controller: controller.passwordFieldController,
      hintText: "lbl_password".tr,
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

  Widget _buildNextButton() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
    );
  }
}
