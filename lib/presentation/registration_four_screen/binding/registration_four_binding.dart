import '../../presentation.dart';

class RegistrationFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationFourController());
  }
}
