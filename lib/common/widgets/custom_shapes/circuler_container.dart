import "package:flutter/material.dart";
import "package:shopping_app_with_getx/utils/constants/colors.dart";

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({
    super.key,
     this.height = 400,
     this.width= 400,
     this.radius=1000,
     this.backgroundColor= AppColors.white,
     this.padding,
     this.margin, this.child,
  });

  final double height, width, radius;

  final Color backgroundColor;
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
