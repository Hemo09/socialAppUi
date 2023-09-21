import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_app/controller/profile_controller.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:get/get.dart';
import 'package:social_app/core/data/me_post_json.dart';

class GetBodyProf extends StatelessWidget {
  const GetBodyProf({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Get.lazyPut(() => ProfileController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "posts",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black.withOpacity(.9)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "35",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black.withOpacity(.7)),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Followers",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black.withOpacity(.9)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1,552",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black.withOpacity(.7)),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Follows",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black.withOpacity(.9)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "182",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black.withOpacity(.7)),
                  ),
                ],
              ),
            ],
          ),
        ),
        GetBuilder<ProfileController>(
          builder: (c) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          c.changeButton();
                        },
                        icon: Icon(
                          EvaIcons.imageOutline,
                          size: 35,
                          color: c.isPhoto == false
                              ? AppColor.primary
                              : AppColor.black,
                        )),
                    IconButton(
                        onPressed: () {
                          c.changeButton();
                        },
                        icon: Icon(
                          EvaIcons.videoOutline,
                          size: 35,
                          color: c.isPhoto ? AppColor.primary : AppColor.black,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                c.isPhoto == false
                    ? Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: List.generate(mePostList.length, (index) {
                          return Container(
                            width: (size.width - 60) / 2,
                            height: (size.width - 70) / 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(mePostList[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          );
                        }),
                      )
                    : Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: List.generate(meVideoList.length, (index) {
                          return InkWell(
                            onTap: () {
                              c.playVideo(context, meVideoList[index]["videoUrl"]);
                            },
                            child: Container(
                              width: (size.width - 60) / 2,
                              height: (size.width - 70) / 2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(meVideoList[index]["img"]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Center(
                                child: Icon(
                                  EvaIcons.playCircleOutline,
                                  size: 45,
                                  color: AppColor.white.withOpacity(.86),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
              ],
            );
          },
        ),
      ],
    );
  }
}
