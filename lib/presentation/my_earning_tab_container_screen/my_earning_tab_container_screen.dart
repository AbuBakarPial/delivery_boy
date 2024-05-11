export 'binding/binding.dart';
export 'controller/controller.dart';
export 'models/models.dart';
import 'package:delivery_boy/presentation/presentation.dart';

class MyEarningTabContainerScreen
    extends GetWidget<MyEarningTabContainerController> {
  const MyEarningTabContainerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildTabview(),
              SizedBox(
                height: 642.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MyEarningPage(),
                    MyEarningPage(),
                    MyEarningPage(),
                    MyEarningPage()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 20.v,
          bottom: 20.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_earnings".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 16.v,
          ),
        )
      ],
    );
  }

  Widget _buildTabview() {
    return SizedBox(
      height: 30.v,
      width: 326.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        unselectedLabelColor: appTheme.black900,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.1),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: const Offset(
                0,
                2,
              ),
            )
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_today".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_this_week".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_this_month".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_total".tr,
            ),
          )
        ],
      ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
