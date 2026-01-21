import 'package:flutter/material.dart';
import 'package:shopping_app_with_getx/common/style/padding.dart';
import 'package:shopping_app_with_getx/common/widgets/buttons/app_elevated_button.dart';
import 'package:shopping_app_with_getx/utils/constants/images.dart';
import 'package:shopping_app_with_getx/utils/constants/sizes.dart';
import 'package:shopping_app_with_getx/utils/constants/texts.dart';
import 'package:shopping_app_with_getx/utils/helpers/device_helpers.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),

      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              // image
              Image.asset(
                AppImages.accountCreateSuccessful,
                height: AppDeviceHelper.getScreenWidth(context) * 0.6,
              ),

              // title
              Text(
                AppTexts.accountCreatedSuccessTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Subtitle
              Text(
                AppTexts.accountCreatedSuccessSubtitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Continue
              AppElevatedButton(
                onPressed: () {},
                child: Text(AppTexts.appContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
