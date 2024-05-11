import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/my_earning_tab_container_screen/models/my_earning_tab_container_model.dart';
import 'package:flutter/material.dart';

class MyEarningTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MyEarningTabContainerModel> myEarningTabContainerModelObj =
      MyEarningTabContainerModel().obs;
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
