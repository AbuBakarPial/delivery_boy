import '../../presentation.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpSixController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<OtpSixModel> otpSixModelObj = OtpSixModel().obs;
  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
