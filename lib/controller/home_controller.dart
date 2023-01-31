
import 'package:get/get.dart';

class StateController extends GetxController{
  var incrementValue = 0.obs;
  var name = 'Jonatas Borges'.obs;
  void increntment() {
    incrementValue.value++;
  }

  void decrement() {
    incrementValue.value--;
  }
}