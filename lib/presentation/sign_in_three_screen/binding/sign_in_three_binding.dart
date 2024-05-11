import 'package:delivery_boy/presentation/presentation.dart';
import 'package:get/get.dart';

class SignInThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInThreeController());
  }
}
