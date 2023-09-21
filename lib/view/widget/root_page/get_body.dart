import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/controller/home_page_Controller.dart';
import 'package:social_app/view/favourite_page.dart';
import 'package:social_app/view/home_page.dart';
import 'package:social_app/view/profile.dart';

import '../../messagScreen.dart';
class GetBodyHome extends StatelessWidget {
  const GetBodyHome({super.key});

  @override
  Widget build(BuildContext context) {
  Get.lazyPut(() => HomePageController());
    return SafeArea(
      child: GetBuilder<HomePageController>(
       builder: (c)
       {
         return  IndexedStack(
           index: c.activate,
           children: const [
             HomePage(),
             MessageScreen(),
             FavouritePage(),
             Profile(),
           ],
         );
       },
      ),
    );
  }
}
