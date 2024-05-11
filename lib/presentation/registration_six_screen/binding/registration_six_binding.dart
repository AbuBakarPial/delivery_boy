import '../../presentation.dart';

class RegistrationSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSixController());
  }
}
