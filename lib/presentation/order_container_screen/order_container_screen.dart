export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class OrderContainerScreen extends GetWidget<OrderContainerController> {
  const OrderContainerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.orderPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
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
}
