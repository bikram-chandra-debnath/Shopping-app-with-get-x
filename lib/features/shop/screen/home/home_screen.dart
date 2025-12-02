import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/widgets/textfields/search_bar.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_appbar.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/primary_header_container.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: AppSizes.homePrimaryHeaderHeight + 20),

          // primary header container
          AppPrimaryHeaderContainer(
            child: Column(
              children: [
                // appbar
                AppHomeAppBar(),
              ],
            ),
          ),

          // search bar
          AppSearchBar(),
        ],
      ),
    );
  }
}