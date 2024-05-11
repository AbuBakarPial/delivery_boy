import '../../presentation.dart';

class UserprofileItemModel {
  UserprofileItemModel(
      {this.address,
      this.house03road,
      this.phoneNumber,
      this.timeAgo,
      this.paymentMethod,
      this.amount,
      this.id}) {
    address = address ?? Rx("House 03, Road 07, Mirpur Dhaka 1216");
    house03road = house03road ?? Rx("House 03, Road 07, Mirpur Dhaka 1216");
    phoneNumber = phoneNumber ?? Rx("TF74562581");
    timeAgo = timeAgo ?? Rx("5 min ago");
    paymentMethod = paymentMethod ?? Rx("Payment Cash");
    amount = amount ?? Rx("\$10");
    id = id ?? Rx("");
  }
  Rx<String>? address;
  Rx<String>? house03road;
  Rx<String>? phoneNumber;
  Rx<String>? timeAgo;
  Rx<String>? paymentMethod;
  Rx<String>? amount;
  Rx<String>? id;
}
