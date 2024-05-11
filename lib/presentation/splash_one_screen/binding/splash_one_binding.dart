import 'package:delivery_boy/presentation/splash_one_screen/controller/splash_one_controller.dart';

import '../../../core/network/utils/app_export.dart';

class SplashOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashOneController());
  }
}
