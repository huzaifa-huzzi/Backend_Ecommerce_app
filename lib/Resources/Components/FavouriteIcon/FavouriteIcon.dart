import 'package:ecommerce_app_flutter/utils/constants/Colors.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';




class FavuriteIconButton extends StatelessWidget {
  const FavuriteIconButton({
    super.key,
    required this.themeController,
    this.width,
    this.height,
    this.size = Sizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor, required this.icon
  });

  final ThemeController themeController;
  final double? width,height,size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:backgroundColor ?? (themeController.isDarkTheme.value ? AppColor.black.withOpacity(0.9) : Colors.white.withOpacity(0.9)),
      ),
      child: IconButton(onPressed:onPressed, icon:  Icon(icon)),
    );
  }
}

