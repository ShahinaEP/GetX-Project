import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_new_project/screen/home_page.dart';
import 'package:getx_new_project/screen/next_page.dart';

class RoutePage{
 List <GetPage<dynamic>> getPages =[
  GetPage(name: '/', page: () => const homeScreen()),
  GetPage(name: '/next-page', page: () => const NextPage()),
  ];
}