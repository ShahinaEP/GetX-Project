import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_new_project/shared_preferences/constant_shared_preferences.dart';
class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ConstantSharedPreferences().getName().toString()??"", style: TextStyle(
              fontSize: 35
            ),),
            TextField(
              controller: controller,
            ),
            ElevatedButton(
                onPressed: (){

                  setState(() {

                    ConstantSharedPreferences().initSharedPreferences(controller.text);
                  });
                  Get.toNamed('/');
                },
                child:const Text('set name')
            )
          ],
        ),
      ),
    );
  }
}
