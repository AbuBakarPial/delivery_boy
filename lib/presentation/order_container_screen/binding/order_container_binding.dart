import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/order_container_screen/controller/order_container_controller.dart';

class OrderContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderContainerController());
  }
}
