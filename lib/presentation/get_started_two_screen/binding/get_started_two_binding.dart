import 'package:delivery_boy/presentation/get_started_two_screen/controller/get_started_two_controller.dart';

import '../../../core/network/utils/app_export.dart';

class GetStartedTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedTwoController());
  }
}
