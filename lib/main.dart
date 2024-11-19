import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persiapan_pas_mobile_burgerfootball/api_login/login_page.dart';
import 'package:persiapan_pas_mobile_burgerfootball/api_register/register_page.dart';
import 'package:persiapan_pas_mobile_burgerfootball/detail/engllishleague.dart';
import 'package:persiapan_pas_mobile_burgerfootball/page/responsive_layout.dart';
import 'bindings/bindings.dart';
import 'controller/responsive_controller.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final ResponsiveController controllers =Get.put(ResponsiveController());
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: [
        //list all page here
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/regis', page: () => RegisterPage()),
        GetPage(name: '/detailenglish', page: () => Engllishleague()),
        GetPage(name: '/dashboard', page: () =>LayoutBuilder(builder: (context, constraints) {
          controllers.updateScreenWidth(constraints.maxWidth);
          return ResponsiveLayout();
        }),binding: MyBindings()),
      ],
    );
  }
}