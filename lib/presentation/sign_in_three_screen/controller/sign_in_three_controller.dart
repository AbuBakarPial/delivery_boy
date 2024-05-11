import '../../presentation.dart';

class SignInThreeController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<SignInThreeModel> signInThreeModelObj = SignInThreeModel().obs;
  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
