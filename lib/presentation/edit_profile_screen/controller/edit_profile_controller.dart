import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/edit_profile_model.dart';

/// A controller class for the EditProfileScreen.
/// ////// This class manages the state of the EditProfileScreen, including the
/// /// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController editProfileNameController = TextEditingController();
  TextEditingController editProfileEmailController = TextEditingController();
  TextEditingController editProfilePhoneNumberController =
      TextEditingController();
  TextEditingController editProfileAddressController = TextEditingController();
  TextEditingController editProfilePasswordController = TextEditingController();
  TextEditingController editProfileNewPasswordController =
      TextEditingController();
  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;
  @override
  void onClose() {
    super.onClose();
    editProfileNameController.dispose();
    editProfileEmailController.dispose();
    editProfilePhoneNumberController.dispose();
    editProfileAddressController.dispose();
    editProfilePasswordController.dispose();
    editProfileNewPasswordController.dispose();
  }
}
