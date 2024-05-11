import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/order_details_five_screen/controller/order_details_five_controller.dart';

class OrderDetailsFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsFiveController());
  }
}
