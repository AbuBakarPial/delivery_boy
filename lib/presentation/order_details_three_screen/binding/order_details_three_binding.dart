import 'package:delivery_boy/presentation/order_details_three_screen/controller/order_details_three_controller.dart';
import 'package:get/get.dart';

class OrderDetailsThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsThreeController());
  }
}
