import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/edit_profile_screen/controller/edit_profile_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}
