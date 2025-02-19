
import 'package:ecommerce_app_flutter/utils/Devics/DeviceUtils.dart';
import 'package:ecommerce_app_flutter/utils/constants/texts.dart';
import 'package:ecommerce_app_flutter/view/onBoarding/OnBoardingScreenone/Widgets/FloatingActionButtonWidget.dart';
import 'package:ecommerce_app_flutter/view/onBoarding/OnBoardingScreenone/Widgets/OnBoardingScreenOneWidget.dart';
import 'package:ecommerce_app_flutter/view/onBoarding/OnBoardingScreenone/Widgets/smoothPageIndicatorWidget.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/onBoardingController/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';




class OnBoardingScreenOne extends StatefulWidget {
  const OnBoardingScreenOne({super.key});

  @override
  State<OnBoardingScreenOne> createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {

  final controller = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
           // Horizontal Scrollable Pages
         PageView(
           controller:  controller.pageController,
           onPageChanged: controller.updatePageIndicator,
           children:
               const [
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle1, image: 'assets/images/delivery.gif.gif', subTitle: TextSelector.onBoardingSubTitle1),
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle3, image: 'assets/images/scene.gif', subTitle: TextSelector.onBoardingSubTitle3),
                  OnBoardingScreenOneWidget(title: TextSelector.onBoardingTitle2, image: 'assets/images/payment.gif', subTitle: TextSelector.onBoardingSubTitle2)
                ],
         ),
           // skip Button 
          Positioned(
            top: DeviceUtils.getAppBarHeight(),
              right:  Sizes.defaultSpace,
              child: TextButton(onPressed: (){
                  controller.skipPage();
              }, child:const  Text('skip',))
          ),
          // Dot Navigation
        const  SmoothPageIndicatorWidget(),
           // CircularButton
        const  FloatingActionButtonWidget()
        ],
      ),
    );

  }
}


