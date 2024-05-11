import 'package:delivery_boy/core/network/utils/app_export.dart';

import '../models/sign_in_three_two_model.dart';

/// A controller class for the SignInThreeTwoDialog.
/// ////// This class manages the state of the SignInThreeTwoDialog, including the
/// /// current signInThreeTwoModelObj
class SignInThreeTwoController extends GetxController {
  Rx<SignInThreeTwoModel> signInThreeTwoModelObj = SignInThreeTwoModel().obs;
}
