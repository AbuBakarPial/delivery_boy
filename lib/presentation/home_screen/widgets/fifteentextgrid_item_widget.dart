import 'package:delivery_boy/core/network/utils/app_export.dart';
import 'package:delivery_boy/presentation/home_screen/controller/home_controller.dart';
import 'package:delivery_boy/presentation/home_screen/models/fifteentextgrid_item_model.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FifteentextgridItemWidget extends StatelessWidget {
  FifteentextgridItemWidget(this.fifteentextgridItemModelObj, {super.key});
  FifteentextgridItemModel fifteentextgridItemModelObj;
  var controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.gradientOrangeToDeepOrangeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Text(
              fifteentextgridItemModelObj.fifteenText!.value,
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          SizedBox(height: 3.v),
          Obx(
            () => Text(
              fifteentextgridItemModelObj.assignToText!.value,
              style: CustomTextStyles.labelLargeInterWhiteA700_1,
            ),
          )
        ],
      ),
    );
  }
}
