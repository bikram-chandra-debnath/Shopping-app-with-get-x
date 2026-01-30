import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart';
import 'package:shopping_app_with_getx/common/widgets/layours/grid_layout.dart';
import 'package:shopping_app_with_getx/common/widgets/products/product_cards/product_cards.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          "Popular Products",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              // Filter
              DropdownButtonFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value) {},
                items:
                    [
                      "Name",
                      "Lower Price",

                      "Higher Price",
                      "Sale",
                      "Newest",
                    ].map((filter) {
                      return DropdownMenuItem(
                        
                        value: filter,
                        child: Text(filter),
                      );
                    }).toList(),
              ),
              SizedBox(height: AppSizes.spaceBtwSections,),
              AppGridLayout(itemCount: 10, itemBuilder: (context,index)=> AppProductCardVerticla())
            ],
          ),
        ),
      ),
    );
  }
}
