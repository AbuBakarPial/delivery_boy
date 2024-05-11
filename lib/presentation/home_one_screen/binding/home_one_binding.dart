import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_one_screen/controller/home_one_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class HomeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOneController());
  }
}
