import 'package:delivery_boy/presentation/order_details_screen/models/order_details_model.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  Rx<OrderDetailsModel> orderDetailsModelObj = OrderDetailsModel().obs;
}
