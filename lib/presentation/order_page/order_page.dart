export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
export 'widgets/widgets.dart';
import 'package:delivery_boy/presentation/presentation.dart';

// ignore: must_be_immutable
class OrderPage extends StatelessWidget {
  OrderPage({super.key});
  OrderController controller = Get.put(OrderController(OrderModel().obs));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            right: 20.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15.v,
                );
              },
              itemCount: controller
                  .orderModelObj.value.userprofileItemList.value.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model = controller
                    .orderModelObj.value.userprofileItemList.value[index];
                return UserprofileItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 31.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 20.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_new_order".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
