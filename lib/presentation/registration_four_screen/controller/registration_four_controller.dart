import '../../presentation.dart';

class RegistrationFourController extends GetxController {
  TextEditingController nameFieldController = TextEditingController();
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController phoneNumberFieldController = TextEditingController();
  TextEditingController addressFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  Rx<RegistrationFourModel> registrationFourModelObj =
      RegistrationFourModel().obs;
  SelectionPopupModel? selectedDropDownValue;
  @override
  void onClose() {
    super.onClose();
    nameFieldController.dispose();
    emailFieldController.dispose();
    phoneNumberFieldController.dispose();
    addressFieldController.dispose();
    passwordFieldController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in registrationFourModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registrationFourModelObj.value.dropdownItemList.refresh();
  }
}
