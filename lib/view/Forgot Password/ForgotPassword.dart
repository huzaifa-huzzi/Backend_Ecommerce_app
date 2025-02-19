
import 'package:ecommerce_app_flutter/utils/constants/texts.dart';
import 'package:ecommerce_app_flutter/view/Forgot%20Password/ResetPassword/resetPassword.dart';
import 'package:ecommerce_app_flutter/view_model/Controller/ThemeController/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding:const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             /// Headings
              Text(TextSelector.forgotPassword,style: Theme.of(context).textTheme.headlineMedium,),
             const  SizedBox(height: Sizes.spaceBtwItems,),
            Text(TextSelector.forgotPasswordScreenSubtitle,style: Theme.of(context).textTheme.labelMedium,),
           const  SizedBox(height: Sizes.spaceBtwSections * 2,),

             /// TextFields
            TextFormField(
              decoration:InputDecoration(labelText: TextSelector.email,prefixIcon: const Icon(Iconsax.direct_right),labelStyle: TextStyle(color: themeController.isDarkTheme.value ? Colors.white : Colors.black,),),

            ),
           const  SizedBox(height: Sizes.spaceBtwSections,),

            /// submit buttons
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.off(() =>const ResetPassword() ), child:const  Text('Submit')),)
          ],
        ),
      ),
    );
  }
}
