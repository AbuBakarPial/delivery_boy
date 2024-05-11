import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_screen/models/home_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;
  Rx<bool> isSelectedSwitch = false.obs;
}
