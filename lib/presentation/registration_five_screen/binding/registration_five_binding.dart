import '../../presentation.dart';

class RegistrationFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationFiveController());
  }
}
