import 'package:delivery_boy/presentation/order_details_three_screen/models/order_details_three_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsThreeController extends GetxController {
  TextEditingController nameEditTextController = TextEditingController();
  TextEditingController mustafizurEditTextController = TextEditingController();
  Rx<OrderDetailsThreeModel> orderDetailsThreeModelObj =
      OrderDetailsThreeModel().obs;
  @override
  void onClose() {
    super.onClose();
    nameEditTextController.dispose();
    mustafizurEditTextController.dispose();
  }
}
