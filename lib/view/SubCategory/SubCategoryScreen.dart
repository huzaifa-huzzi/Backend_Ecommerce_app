
import 'package:ecommerce_app_flutter/Resources/Product%20Card/Product_card_horizontal.dart';
import 'package:ecommerce_app_flutter/Resources/common%20widgets/sectionHeading/sectionHeadingWidget.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/sizes.dart';




class SubCategoryScreen extends StatefulWidget {
  const SubCategoryScreen({super.key});

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoes',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        iconTheme: IconThemeData(
          color: themeController.isDarkTheme.value
              ? Colors.white // Back button color for dark theme
              : Colors.black, // Back button color for light theme
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/banners/banner-1.png', // Image path
                    fit: BoxFit.cover,
                  ),
                ),
                ),
              const SizedBox(height: Sizes.spaceBtwSections),

              /// Sub-categories
              Column(
                children: [
                  // Section Heading
                  SectionHeadingWidget(title: 'Nike Shoe', onPressed: () {}),
                  const SizedBox(height: Sizes.spaceBtwItems / 2),

                  /// Horizontal Product List
                  SizedBox(
                    height: 160, // Adjust the height based on the card height
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                      separatorBuilder: (context, index) => const SizedBox(width: 8),
                      itemCount: 10,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
