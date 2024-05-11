import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_screen/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
