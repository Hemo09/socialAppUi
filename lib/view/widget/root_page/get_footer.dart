import 'package:flutter/material.dart';
import 'package:social_app/controller/home_page_Controller.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:get/get.dart';
class GetFooter extends StatelessWidget {
  const GetFooter({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomePageController());
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow:
         [
          BoxShadow(
            color: AppColor.grey.withOpacity(.2),
            offset: const Offset(0,1),
            blurRadius: 20.0,
            spreadRadius: 10.0
          ),
        ],
      ),
      child:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder<HomePageController>(
          builder: (c)
          {
            return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                InkWell(
                  onTap: ()
                  {
                    c.index0();
                  },
                    child: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: c.activate == 0 ? AppColor.primary : AppColor.black,
                )),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: ()
                  {
                    c.index1();

                  },
                  child: Icon(
                    Icons.message,
                    size: 30,
                    color: c.activate == 1 ? AppColor.primary : AppColor.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: ()
                  {
                    c.index2();
                  },
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                    color: c.activate == 2 ? AppColor.primary : AppColor.black,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: ()
                  {
                    c.index3();
                  },
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: c.activate == 3 ? AppColor.primary : AppColor.black,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
