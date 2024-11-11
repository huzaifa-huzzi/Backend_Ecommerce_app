import 'dart:async';
import 'package:ecommerce_app_flutter/Resources/Routes/RoutesName.dart';
import 'package:get/get.dart';



class SplashServices {

   void isTiming() {
     Timer(const Duration(seconds: 3), () {
       Get.toNamed(RouteName.onBoardingOne);
     });
   }


}