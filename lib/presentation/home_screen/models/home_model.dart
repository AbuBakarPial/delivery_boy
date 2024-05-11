import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_screen/models/fifteentextgrid_item_model.dart';

class HomeModel {
  Rx<List<FifteentextgridItemModel>> fifteentextgridItemList = Rx([
    FifteentextgridItemModel(
        fifteenText: "15".obs, assignToText: "Assign to Pickup".obs),
    FifteentextgridItemModel(fifteenText: "15".obs, assignToText: "Pickup".obs),
    FifteentextgridItemModel(
        fifteenText: "15".obs, assignToText: "Delivered".obs),
    FifteentextgridItemModel(
        fifteenText: "0".obs, assignToText: "Cancelled".obs)
  ]);
}
