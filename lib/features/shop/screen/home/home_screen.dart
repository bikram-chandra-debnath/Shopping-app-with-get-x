import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/home_appbar.dart';
import 'package:shopping_app_with_getx/features/shop/screen/home/widget/primary_header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPrimaryHeaderContainer(
        child: Column(
          children: [
            // appbar
            AppHomeAppBar(),
          ],
        ),
      ),
    );
  }
}

