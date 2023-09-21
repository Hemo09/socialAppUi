import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/core/data/post_json.dart';

class GetBodyFav extends StatelessWidget {
  const GetBodyFav({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Saved",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 40,),
            Wrap(
            runSpacing: 20,
            spacing: 20,
            children: List.generate(postsList.length, (index)
            {
              return Container(
                width: (size.width-71)/2,
                height:(size.width-70)/2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(postsList[index]["img"]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow:
                  [
                    BoxShadow(
                        offset: const Offset(0,1),
                        blurRadius: 15,
                        color: AppColor.black.withOpacity(.12)
                    ),
                  ],
                ),
              );
            }),
        ),
          ],
        ),
      ),
    );
  }
}
