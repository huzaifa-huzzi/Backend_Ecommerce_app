
import 'package:ecommerce_app_flutter/Resources/Components/HomeAppBar/HomeAppBarWidget.dart';
import 'package:ecommerce_app_flutter/Resources/Components/circularContainer/CircularContainer.dart';
import 'package:ecommerce_app_flutter/Resources/Components/curvedEdges.dart/curevedEdges.dart';
import 'package:ecommerce_app_flutter/Resources/Product%20Card/Product_card_vertical.dart';
import 'package:ecommerce_app_flutter/Resources/common%20widgets/HomeSliderWidget.dart';
import 'package:ecommerce_app_flutter/Resources/common%20widgets/VerticalImageWidget/verticalImageWidget.dart';
import 'package:ecommerce_app_flutter/utils/constants/Colors.dart';
import 'package:ecommerce_app_flutter/view/SubCategory/SubCategoryScreen.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Resources/common widgets/searchBAr/HomeSearchBAr.dart';
import '../../Resources/common widgets/sectionHeading/sectionHeadingWidget.dart';
import '../../utils/constants/sizes.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Appbar and Custom design of background
            ClipPath(
              clipper: CurvedEdges(),
              child: Container(
                color: AppColor.primary,
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      // Background circular containers
                      Positioned(
                        top: -150,
                        right: -230,
                        child: CircularContainer(
                          backgroundColor: AppColor.textWhite.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -310,
                        child: CircularContainer(
                          backgroundColor: AppColor.textWhite.withOpacity(0.1),
                        ),
                      ),
                      // AppBar Widget
                      const HomeAppBarWidget(),
                      // Search bar widget with proper positioning
                      const Positioned(
                        left: 0,
                        top: 130,
                        right: 0,
                        child: HomeSearchBar(text: 'Search in store',),
                      ),
                      /// categories
                      Positioned(
                        top: 210, // Adjust the top value based on your layout
                        left: 30,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          children: [
                            SectionHeadingWidget(
                              title: 'Popular Categories',
                              onPressed: () {},
                              showActionButton: false,
                              textColor: AppColor.textWhite,
                            ),
                            const SizedBox(height: Sizes.spaceBtwItems),
                            // ListView inside Expanded
                            Expanded(
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return VerticalImageWidget(
                                    image: '', // Provide the image path here
                                    title: 'Shoes',
                                    onPressed: ()  => Get.to(() =>const  SubCategoryScreen() ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           const SizedBox(height: Sizes.defaultSpace,),
           /// body
          const HomeSliderWidget(),
            const SizedBox(height: Sizes.spaceBtwSections),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SectionHeadingWidget(
                title: 'Popular Categories',
                onPressed: () => Get.toNamed('/ViewAllProducts'),
                showActionButton: true,
                textColor: themeController.isDarkTheme.value ? Colors.white : AppColor.dark ,
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
           GridView.builder(
              itemCount: 4,
               shrinkWrap: true,
               padding: EdgeInsets.zero,
               physics:const  NeverScrollableScrollPhysics(),
               gridDelegate:const
               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: Sizes.gridViewSpacing,crossAxisSpacing: Sizes.gridViewSpacing,mainAxisExtent: 288), itemBuilder: (_,index){
             return const  ProductCardVertical();
           }),

          ],
        ),
      ),
    );
  }
}
