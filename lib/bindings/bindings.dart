import 'package:get/get.dart';
import 'package:persiapan_pas_mobile_burgerfootball/controller/dashboard_controllers.dart';

class MyBindings extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => DashboardControllers());
  }
}