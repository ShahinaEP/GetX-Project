
import 'package:get/get.dart';
import 'package:getx_new_project/controller/home_controller.dart';



class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StateController());
  }

}