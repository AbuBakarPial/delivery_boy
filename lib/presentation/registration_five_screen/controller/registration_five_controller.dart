import '../../presentation.dart';

class RegistrationFiveController extends GetxController {
  TextEditingController drivingLicenseNController = TextEditingController();
  TextEditingController vehiclenumberController = TextEditingController();
  Rx<RegistrationFiveModel> registrationFiveModelObj =
      RegistrationFiveModel().obs;
  @override
  void onClose() {
    super.onClose();
    drivingLicenseNController.dispose();
    vehiclenumberController.dispose();
  }
}
