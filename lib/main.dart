import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_new_project/provider/count_provider.dart';
import 'package:getx_new_project/route/route.dart';
import 'package:getx_new_project/screen/home_page.dart';
import 'package:getx_new_project/screen/nnknown_route_page.dart';
import 'package:getx_new_project/shared_preferences/constant_shared_preferences.dart';
import 'package:provider/provider.dart';

import 'bindings/all_bindings.dart';

void main() async{
  AllBindings().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await ConstantSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  // void initState(){
  //   ConstantSharedPreferences().initSharedPreferences('pia');
  // }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>CountProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        unknownRoute:GetPage(name: '/not-found', page: () => const UnknownRoutePage()),
        initialRoute: '/',
        getPages: RoutePage().getPages,

        // [
        //   GetPage(name: '/', page: () => const homeScreen()),
        //   GetPage(name: '/next-page', page: () => const NextPage()),
        // ],
        home: const homeScreen(),
      ),
    );
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   unknownRoute:GetPage(name: '/not-found', page: () => const UnknownRoutePage()),
    //   initialRoute: '/',
    //   getPages: RoutePage().getPages,
    //
    //   // [
    //   //   GetPage(name: '/', page: () => const homeScreen()),
    //   //   GetPage(name: '/next-page', page: () => const NextPage()),
    //   // ],
    //   home: const homeScreen(),
    // );
  }
}
