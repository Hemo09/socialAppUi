import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/view/widget/favourite_page/get_app_bar.dart';
import 'package:social_app/view/widget/favourite_page/get_body.dart';
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: GetAppBarFav(),
      ),
      backgroundColor: AppColor.white,
      body: GetBodyFav(),
    );
  }
}
