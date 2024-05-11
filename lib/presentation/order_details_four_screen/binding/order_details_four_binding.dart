import 'package:delivery_boy/presentation/order_details_four_screen/controller/order_details_four_controller.dart';

import '../../../core/network/utils/app_export.dart';

class OrderDetailsFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsFourController());
  }
}
