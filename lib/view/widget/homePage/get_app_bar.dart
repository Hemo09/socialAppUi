import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
class GetAppBar extends StatelessWidget {
  const GetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      elevation: 0.0,
      title:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Social",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColor.black,
          ),
          ),
        ],
      ),
      actions: [
        Icon(Icons.notifications_outlined , size: 30,color: AppColor.black.withOpacity(.6),),
      ],
    );
  }
}
