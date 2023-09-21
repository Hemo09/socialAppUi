import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/core/data/post_json.dart';
import 'package:social_app/core/data/user_json.dart';

class GetBody extends StatelessWidget {
  const GetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0),
      child: SingleChildScrollView(
        physics:const  BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Feed",
              style: TextStyle(
                fontSize: 22,
                color: AppColor.black.withOpacity(.9),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFE0DF),
                          Color(0xFFE1F6F4),
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Row(
                    children: List.generate(usersList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFFE0DF),
                                Color(0xFFE1F6F4),
                              ],
                            ),
                            image: DecorationImage(
                              image: AssetImage(usersList[index]["img"]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
         Column(
           children: List.generate(postsList.length, (index)
           {
             return  Padding(
               padding: const EdgeInsets.all(15.0),
               child: Stack(
                 children: [
                   Container(
                     width: double.infinity,
                     height: 288,
                     decoration:  BoxDecoration(
                       image: DecorationImage(
                           image: NetworkImage(postsList[index]["postImg"]),
                           fit: BoxFit.cover
                       ),
                       borderRadius: BorderRadius.circular(20.0),
                       color:AppColor.white,
                       boxShadow:  [
                         BoxShadow(
                             color: AppColor.black.withOpacity(.5),
                             offset: const Offset(0, 1),
                             blurRadius: 10.0
                         ),
                       ],
                     ),

                   ),
                   Container(
                     height: 288,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color:AppColor.grey.withOpacity(.2),
                     ),
                   ),
                   Container(
                     width: double.infinity,
                     height: 288,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all( 15.0 ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           ListTile(
                             leading: Container(
                               height: 60,
                               width: 60,
                               decoration:  BoxDecoration(
                                   shape: BoxShape.circle,
                                   image: DecorationImage(
                                     image: NetworkImage(postsList[index]["img"]),
                                     fit: BoxFit.cover,
                                   )
                               ),
                             ),
                             title: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(postsList[index]["name"] , style: const TextStyle(
                                   fontWeight: FontWeight.w500,
                                   color: AppColor.white,
                                 ),),
                                 Text(postsList[index]["time"] , style: const TextStyle(
                                   fontWeight: FontWeight.w500,
                                   color: AppColor.white,
                                   fontSize: 13,
                                 ),),

                               ],
                             ),
                             trailing:  const Icon(EvaIcons.menu , size: 25, color: AppColor.white,),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(
                                 width: 70,
                                 height: 27,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(27),
                                     color: const Color(0xFFE5E5E5).withOpacity(.5)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     const Icon(EvaIcons.heartOutline , color:AppColor.white,size:16,),
                                     Text(
                                       postsList[index]["like"],
                                       style: const TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,

                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Container(
                                 width: 70,
                                 height: 27,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(27),
                                     color: const Color(0xFFE5E5E5).withOpacity(.5)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     const Icon(EvaIcons.messageSquareOutline , color:AppColor.white,size:16,),
                                     Text(
                                       postsList[index]["comment"],
                                       style: const TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,

                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               Container(
                                 width: 70,
                                 height: 27,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(27),
                                     color: const Color(0xFFE5E5E5).withOpacity(.5)
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     const Icon(EvaIcons.shareOutline , color:AppColor.white,size:16,),
                                     Text(
                                       postsList[index]["share"],
                                       style: const TextStyle(
                                         fontSize: 15,
                                         fontWeight: FontWeight.w700,

                                       ),
                                     ),
                                   ],
                                 ),
                               ),


                             ],
                           ),
                         ],
                       ),
                     ),
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
