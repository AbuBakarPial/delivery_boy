import 'package:delivery_boy/presentation/order_container_screen/models/order_container_model.dart';
import 'package:get/get.dart';

class OrderContainerController extends GetxController {
  Rx<OrderContainerModel> orderContainerModelObj = OrderContainerModel().obs;
}
