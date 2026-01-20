import "package:flutter/material.dart";
import "package:shopping_app_with_getx/common/style/padding.dart";
import "package:shopping_app_with_getx/common/widgets/appbar/my_appbar.dart";
import "package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart";
import "package:shopping_app_with_getx/common/widgets/text/product_price.dart";
import "package:shopping_app_with_getx/utils/constants/sizes.dart";

import "../../../../common/widgets/products/cart/cart_item.dart";
import "../../../../common/widgets/products/cart/product_quantity_with_add_remove.dart";


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-----[AppBar]------
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineMedium),
      ),

      //-----[body]------
      body: Padding(
        padding: AppPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder:
              (BuildContext context, int index) =>
                  SizedBox(height: AppSizes.spaceBtwSections),
          itemCount: 13,
          itemBuilder: (context, index) {
            return Column(
              children: [
                // cart item
                AppCartItem(),
                SizedBox(height: AppSizes.spaceBtwItems),
                // price, counter button
                Row(
                  children: [
                    // extra space
                    SizedBox(width: 70),

                    // quantity button
                    AppProductQuantityWithAddRemove(),

                    Spacer(),

                    // price text
                    AppProductPrice(price: "323"),
                  ],
                ),
              ],
            );
          },
        ),
      ),

      // bottom navigation bar
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: AppElevatedButton(
          onPressed: () {},
          child: Text("Checkout \$ 323"),
        ),
      ),
    );
  }
}
