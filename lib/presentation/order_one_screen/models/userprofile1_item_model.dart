import '../../presentation.dart';

class Userprofile1ItemModel {
  Userprofile1ItemModel(
      {this.addressText,
      this.addressText1,
      this.phoneNumber,
      this.timeAgo,
      this.paymentMethod,
      this.paymentAmount,
      this.id}) {
    addressText = addressText ?? Rx("House 03, Road 07, Mirpur Dhaka 1216");
    addressText1 = addressText1 ?? Rx("House 03, Road 07, Mirpur Dhaka 1216");
    phoneNumber = phoneNumber ?? Rx("TF74562581");
    timeAgo = timeAgo ?? Rx("5 min ago");
    paymentMethod = paymentMethod ?? Rx("Payment Cash");
    paymentAmount = paymentAmount ?? Rx("\$10");
    id = id ?? Rx("");
  }
  Rx<String>? addressText;
  Rx<String>? addressText1;
  Rx<String>? phoneNumber;
  Rx<String>? timeAgo;
  Rx<String>? paymentMethod;
  Rx<String>? paymentAmount;
  Rx<String>? id;
}
