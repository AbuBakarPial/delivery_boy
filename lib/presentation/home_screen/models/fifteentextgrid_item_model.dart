import 'package:get/get_rx/src/rx_types/rx_types.dart';

class FifteentextgridItemModel {
  FifteentextgridItemModel({this.fifteenText, this.assignToText, this.id}) {
    fifteenText = fifteenText ?? Rx("15");
    assignToText = assignToText ?? Rx("Assign to Pickup");
    id = id ?? Rx("");
  }
  Rx<String>? fifteenText;
  Rx<String>? assignToText;
  Rx<String>? id;
}
