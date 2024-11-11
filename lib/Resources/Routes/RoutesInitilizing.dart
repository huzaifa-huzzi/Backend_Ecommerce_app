
import 'package:ecommerce_app_flutter/Resources/Routes/RoutesName.dart';
import 'package:ecommerce_app_flutter/view/Brand/Brand.dart';
import 'package:ecommerce_app_flutter/view/DashBoard%20screen/DashBoardScreen.dart';
import 'package:ecommerce_app_flutter/view/Email%20verification/EmailVerification.dart';
import 'package:ecommerce_app_flutter/view/Forgot%20Password/ForgotPassword.dart';
import 'package:ecommerce_app_flutter/view/View%20All%20Products/ViewAllProducts.dart';
import 'package:ecommerce_app_flutter/view/login/LoginScreen.dart';
import 'package:ecommerce_app_flutter/view/onBoarding/OnBoardingScreenone/onBoardingScreenOne.dart';
import 'package:ecommerce_app_flutter/view/signup/signupScreen.dart';
import 'package:get/get.dart';

import '../../view/splash/SplashScreen.dart';

class AppRoutes{

  static appRoutes() => [
     //splashScreen
    GetPage(name:RouteName.splashScreen , page: () =>  const SplashScreen()),
    // Views
    GetPage(name:RouteName.onBoardingOne , page: () =>const   OnBoardingScreenOne()),
    GetPage(name:RouteName.dashBoardScreen , page: () =>const   DashboardScreen()),
    //Authentication
    GetPage(name:RouteName.onBoardingOne , page: () =>const   LoginScreen()),
    GetPage(name:RouteName.signupScreen , page: () =>const   SignUpScreen()),
    GetPage(name:RouteName.emailVerification , page: () =>const   EmailVerification()),
    GetPage(name:RouteName.emailVerification , page: () =>const   ForgotPassword()),
    GetPage(name:RouteName.AllProductSrceen, page: () =>ViewAllProducts()),
    GetPage(name:RouteName.BrandingName, page: () =>const   AllBrandScreen()),

  ];

}