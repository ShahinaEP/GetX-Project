import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_new_project/controller/home_controller.dart';
// import 'package:getx_new_project/screen/home_page.dart';


class NextPage extends GetView<StateController>{
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50,),
          Obx(() =>  Text(controller.incrementValue.value.toString(), style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30
          ),),),

          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
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
          const SizedBox(height: 50,),
          ElevatedButton(
              onPressed: () {
                Get.back();
                // Get.toNamed('/');
                Get.snackbar("Snack bar Title", "This will be Snack bar Message",
                    titleText: const Text(
                      "Hi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    messageText: const Text(
                      "You successfully go back",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    backgroundColor: Colors.red);


              },
              // style: ElevatedButton.styleFrom(
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(150.0)),
              // ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Text('next page', style: TextStyle(
                  fontSize: 20
                ),),
              )),
        ],
      ),
    );
  }

}