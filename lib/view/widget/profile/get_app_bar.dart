import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/core/constant/app_images.dart';
class GetAppBarProf extends StatelessWidget {
  const GetAppBarProf({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primaryLight,
      elevation: 0.0,
      flexibleSpace: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.grey,
                  width: 2,
                ),borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.person8),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text("John Doe" , style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),),
            const SizedBox(
              height: 13,
            ),
            Text("@JohnDoe" , style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black.withOpacity(.5),
            ),),

          ],
        ),
      ),
    );
  }
}
