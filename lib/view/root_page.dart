import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/view/widget/root_page/get_body.dart';
import 'package:social_app/view/widget/root_page/get_floating_button.dart';
import 'package:social_app/view/widget/root_page/get_footer.dart';
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      bottomNavigationBar:GetFooter() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GetFloatingButton(),
      body: GetBodyHome(),

    );
  }
}

