import '../../presentation.dart';

class OrderDetailsTwoController extends GetxController {
  TextEditingController notesvalueoneController = TextEditingController();
  Rx<OrderDetailsTwoModel> orderDetailsTwoModelObj = OrderDetailsTwoModel().obs;
  @override
  void onClose() {
    super.onClose();
    notesvalueoneController.dispose();
  }
}
