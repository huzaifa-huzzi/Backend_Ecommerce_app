
import 'package:ecommerce_app_flutter/utils/constants/Colors.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/Sizes.dart';


class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.width * 0.15,
        padding: const EdgeInsets.all(Sizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? themeController.isDarkTheme.value
              ? AppColor.dark
              : AppColor.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
          border: showBorder ? Border.all(color: AppColor.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: themeController.isDarkTheme.value ? Colors.white : AppColor.darkerGrey),
            const SizedBox(width: Sizes.defaultSpace),
            Text(
              text,
              style: TextStyle(color: themeController.isDarkTheme.value ? Colors.white : AppColor.darkerGrey),
            ),
          ],
        ),
      ),
    );
  }
}