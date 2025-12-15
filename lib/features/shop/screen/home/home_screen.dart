import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/common/widgets/textfields/search_bar.dart';
import 'package:shopping_app_with_getx/features/shop/controller/home/home_controller.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_appbar.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_categories.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/primary_header_container.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/promo_slider.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    final controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          // ------[Upper part]-----
          Stack(
            children: [
              SizedBox(height: AppSizes.homePrimaryHeaderHeight + 20),

              // primary header container
              AppPrimaryHeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // appbar
                    AppHomeAppBar(),

                    SizedBox(height: AppSizes.spaceBtwSections),

                    // new category
                    AppHomeCategories(),
                  ],
                ),
              ),

              // search bar
              AppSearchBar(),

              //
            ],
          ),

          // ------[Lower part]-----
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: AppPromoSlider(banners: [
              AppImages.banner1,
              AppImages.banner2,
              AppImages.banner3,
              AppImages.banner4,
              ]),
          ),
        ],
      ),
    );
  }
}
