import 'package:delivery_boy/presentation/splash_one_screen/models/splash_one_model.dart';
import 'package:delivery_boy/routes/app.routes.dart';
import 'package:get/get.dart';

class SplashOneController extends GetxController {
  Rx<SplashOneModel> splashOneModelObj = SplashOneModel().obs;
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Get.offNamed(
        AppRoutes.getStartedTwoScreen,
      );
    });
  }
}
