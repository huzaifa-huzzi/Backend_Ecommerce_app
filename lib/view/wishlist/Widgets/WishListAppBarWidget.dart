import 'package:ecommerce_app_flutter/view/login/LoginScreen.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class wishListAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final int cartItemCount;
  final Color? color;

  const wishListAppBarWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.cartItemCount = 0,
    this.color,

  });

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .001),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {
                Get.to(const LoginScreen());
              },
              icon:  Icon(Iconsax.add,color: themeController.isDarkTheme.value ? Colors.white : Colors.black ,size: Sizes.iconLg,),
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
