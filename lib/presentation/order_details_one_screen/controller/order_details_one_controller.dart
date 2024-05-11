import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/order_details_one_model.dart';

class OrderDetailsOneController extends GetxController {
  Rx<OrderDetailsOneModel> orderDetailsOneModelObj = OrderDetailsOneModel().obs;
}
