import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/get_started_two_screen/models/get_started_two_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GetStartedTwoController extends GetxController {
  Rx<GetStartedTwoModel> getStartedTwoModelObj = GetStartedTwoModel().obs;
}
