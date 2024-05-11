import 'package:delivery_boy/presentation/my_earning_tab_container_screen/controller/my_earning_tab_container_controller.dart';
import 'package:get/get.dart';

class MyEarningTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyEarningTabContainerController());
  }
}
