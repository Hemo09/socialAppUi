import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../core/data/me_post_json.dart';

class ProfileController extends GetxController {
  late VideoPlayerController controller;

  bool isPhoto = false;

  void changeButton() {
    isPhoto = !isPhoto;
    update();
  }
  void playVideo(BuildContext context, videoUrl) {
    controller = VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    controller.addListener(() {
      update();
    });
    controller.setLooping(true);
    controller.initialize().then((value) {
      update();
    });
    controller.play();
    update();

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            )));
  }

  @override
  void onInit() {
    controller = VideoPlayerController.networkUrl(Uri.parse(meVideoList[0]['videoUrl']));
    controller.addListener(() {
      update();
    });
    controller.setLooping(true);
    controller.initialize().then((value) {
      update();
    });
    controller.play();
    update();

    super.onInit();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
