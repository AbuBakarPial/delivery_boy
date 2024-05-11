import '../../presentation.dart';

class OrderModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        address: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        house03road: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        phoneNumber: "TF74562581".obs,
        timeAgo: "5 min ago".obs,
        paymentMethod: "Payment Cash".obs,
        amount: "\$10".obs),
    UserprofileItemModel(
        address: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        house03road: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        phoneNumber: "TF74562581".obs,
        timeAgo: "5 min ago".obs,
        paymentMethod: "Payment Cash".obs,
        amount: "\$10".obs),
    UserprofileItemModel(paymentMethod: "Payment Cash".obs, amount: "\$10".obs)
  ]);
}
