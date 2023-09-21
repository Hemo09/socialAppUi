import 'package:flutter/material.dart';
import 'package:social_app/view/widget/profile/get_app_bar.dart';
import 'package:social_app/view/widget/profile/get_body_prof.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(180.0),
        child: GetAppBarProf(),
      ),
      body: GetBodyProf(),
    );
  }
}

