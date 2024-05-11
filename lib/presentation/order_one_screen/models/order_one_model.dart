import '../../presentation.dart';

class OrderOneModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        addressText: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        addressText1: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        phoneNumber: "TF74562581".obs,
        timeAgo: "5 min ago".obs,
        paymentMethod: "Payment Cash".obs,
        paymentAmount: "\$10".obs),
    Userprofile1ItemModel(
        addressText: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        addressText1: "House 03, Road 07, Mirpur Dhaka 1216".obs,
        phoneNumber: "TF74562581".obs,
        timeAgo: "5 min ago".obs,
        paymentMethod: "Payment Cash".obs,
        paymentAmount: "\$10".obs),
    Userprofile1ItemModel(
        paymentMethod: "Payment Cash".obs, paymentAmount: "\$10".obs)
  ]);
}
