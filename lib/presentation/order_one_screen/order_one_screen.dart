export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
export 'widgets/widgets.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderOneScreen extends GetWidget<OrderOneController> {
  const OrderOneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [SizedBox(height: 6.v), _buildUserprofile()],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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

  Widget _buildUserprofile() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
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
                .orderOneModelObj.value.userprofile1ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model = controller
                  .orderOneModelObj.value.userprofile1ItemList.value[index];
              return Userprofile1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Order:
        return AppRoutes.orderPage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Setting:
        return AppRoutes.settingPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.orderPage:
        return OrderPage();
      case AppRoutes.settingPage:
        return SettingPage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleftone() {
    Get.back();
  }
}
