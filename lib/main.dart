
import 'package:ecommerce_app_flutter/Resources/Routes/RoutesInitilizing.dart';
import 'package:ecommerce_app_flutter/view/splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/Theme/Theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:TAppTheme.lightTheme ,
      darkTheme: TAppTheme.dartTheme,
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
