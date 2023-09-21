import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/controller/home_page_Controller.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'dart:math'as math;
class GetFloatingButton extends StatelessWidget {
  const GetFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomePageController());
    return Transform.rotate(
      angle: -math.pi / 4,
      child: GetBuilder<HomePageController>(
        builder: (c)
        {
          return InkWell(
            onTap: ()
            {
              c.index4();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.black,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    offset:const Offset(0,1),
                    blurRadius: 5,
                    color: AppColor.grey.withOpacity(.6),
                  ),
                ],
              ),
              child: Center(child: Transform.rotate(
                  angle: -math.pi/4,
                  child:  Icon(Icons.add , color:c.activate==4?AppColor.primary:AppColor.white, size: 25,)) ),
            ),
          );
        },
      ),
    );
  }
}
