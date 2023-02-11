import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_new_project/controller/home_controller.dart';
import 'package:getx_new_project/screen/next_page.dart';
import 'package:getx_new_project/shared_preferences/constant_shared_preferences.dart';

class homeScreen extends GetView<StateController> {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Obx(
              () => Text(controller.incrementValue.value.toString(),
                  style: const TextStyle(fontSize: 45)),
            ),

            Text(
              controller.incrementValue.value.toString(),
              style: const TextStyle(fontSize: 45),
            ),
            // Icon(Icons.compass),
            Text(
              controller.name.value.toString(),
              style: const TextStyle(fontSize: 25),
            ),
            Obx(() => Text(controller.fullName.value.text.toString())),
            Obx(() =>TextField(
              controller: Get.put(controller.fullName.value),
              // keyboardType: TextInputType.number,
            )),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.valueAdd();
                      controller.increntment();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150.0)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Icon(
                        Icons.add,
                        size: 35,
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150.0)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Icon(
                        Icons.horizontal_rule,
                        size: 35,
                      ),
                    )),
              ],
            ),

           Text(ConstantSharedPreferences().getName().toString(), style: TextStyle(
                fontSize: 35
            ),),
            ElevatedButton(
                onPressed: () {
                  //   Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondScreen()));
                  // Get.to(NextPage());
                  Get.toNamed('/shared-pref-page');
                },
                child:const Text("Shared Preferences")),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Snackbar Title", "This will be Snackbar Message",
                      titleText: const Text(
                        "Hi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      messageText: const Text(
                        "You successfully login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      backgroundColor: Colors.green);


                  Get.to(NextPage());
                  // Get.snackbar(
                  //     'Hi',
                  //     'you successfully login',
                  //     colorText: Colors.white,
                  //     // backgroundColor: Colors.red,
                  // );
                  // Get.defaultDialog(title: 'hi i am dialog');
                  // Get.defaultDialog(
                  //     title: "Welcome to Flutter Dev'S",
                  //     middleText: "FlutterDevs is a protruding flutter app development company with "
                  //         "an extensive in-house team of 30+ seasoned professionals who know "
                  //         "exactly what you need to strengthen your business across various dimensions",
                  //     // backgroundColor: Colors.red,
                  //     // titleStyle: const TextStyle(color: Colors.white),
                  //     // middleTextStyle: const TextStyle(color: Colors.white, fontSize:20),
                  //     radius: 30
                  // );
                },
                // style: ElevatedButton.styleFrom(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(150.0)),
                // ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Text('next page'),
                )),

            ElevatedButton(
                onPressed: () {
                 Get.toNamed('/counter');
                },
                child:const Text("Counter page")),
          ],
        ),
      ),

    );
  }
}
