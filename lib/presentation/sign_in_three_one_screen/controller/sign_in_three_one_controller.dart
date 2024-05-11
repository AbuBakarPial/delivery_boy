import '../../presentation.dart';

class SignInThreeOneController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<SignInThreeOneModel> signInThreeOneModelObj = SignInThreeOneModel().obs;
  Rx<bool> isShowPassword = true.obs;
  Rx<bool> isShowPassword1 = true.obs;
  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    passwordController.dispose();
  }
}
