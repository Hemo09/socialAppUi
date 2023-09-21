import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/view/widget/messageScreen/get_app_bar_message.dart';
import 'package:social_app/view/widget/messageScreen/get_body_message.dart';
class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: GetAppMessage(),
      ),
      body: GetBodyMessage(),
    );
  }
}
