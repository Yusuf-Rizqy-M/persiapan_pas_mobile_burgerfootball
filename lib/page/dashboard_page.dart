import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persiapan_pas_mobile_burgerfootball/controller/dashboard_controllers.dart';

import 'package:persiapan_pas_mobile_burgerfootball/menu/favorite_menu.dart';
import 'package:persiapan_pas_mobile_burgerfootball/menu/home_menu.dart';
import 'package:persiapan_pas_mobile_burgerfootball/menu/popular_menu.dart';
import 'package:persiapan_pas_mobile_burgerfootball/menu/profile_menu.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardControllers dashboardControllers = Get.find();
    final List<Widget> menus = [
       HomeMenu(),
       PopularMenu(),
       FavoriteMenu(),
       ProfileMenu()
    ];

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blueAccent),
                child: const Text(
                  'Navigation Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  dashboardControllers.changeMenu(0);
                },
              ),
              ListTile(
                leading: const Icon(Icons.trending_up),
                title: const Text('Popular'),
                onTap: () {
                  dashboardControllers.changeMenu(1);
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorite'),
                onTap: () {
                  dashboardControllers.changeMenu(2);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  dashboardControllers.changeMenu(3);
                },
              ),
            ],
          ),
        ),
        body: menus[dashboardControllers.selectedindex.value],
      );
    });
  }
}
