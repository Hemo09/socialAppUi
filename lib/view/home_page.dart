import 'package:flutter/material.dart';
import 'package:social_app/view/widget/homePage/get_body.dart';

import '../core/constant/app_color.dart';
import 'widget/homePage/get_app_bar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(60.0),
        child: GetAppBar(),
      ),
      body: GetBody(),
    );
  }
}
