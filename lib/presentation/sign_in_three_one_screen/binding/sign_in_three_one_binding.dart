import '../../presentation.dart';

class SignInThreeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInThreeOneController());
  }
}
