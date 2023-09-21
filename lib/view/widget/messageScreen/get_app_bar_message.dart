import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
class GetAppMessage extends StatelessWidget {
  const GetAppMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      elevation: 0.0,
      title: const Text("Message" , style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColor.black,
      ),),
    );
  }
}
