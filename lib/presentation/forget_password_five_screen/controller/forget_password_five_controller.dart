import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/forget_password_five_model.dart';

class ForgetPasswordFiveController extends GetxController {
  TextEditingController emailController = TextEditingController();
  Rx<ForgetPasswordFiveModel> forgetPasswordFiveModelObj =
      ForgetPasswordFiveModel().obs;
  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
