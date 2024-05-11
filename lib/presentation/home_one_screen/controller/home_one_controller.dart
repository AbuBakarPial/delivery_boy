import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_one_screen/models/home_one_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeOneController extends GetxController {
  Rx<HomeOneModel> homeOneModelObj = HomeOneModel().obs;
  Rx<bool> isSelectedSwitch = false.obs;
}
