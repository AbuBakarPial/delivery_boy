
import '../../presentation.dart';

class OrderDetailsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsTwoController());
  }
}
