import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/forget_password_five_screen/controller/forget_password_five_controller.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordFiveController());
  }
}
