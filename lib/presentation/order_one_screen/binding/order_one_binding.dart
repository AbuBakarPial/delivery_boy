import '../../presentation.dart';

class OrderOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderOneController());
  }
}
