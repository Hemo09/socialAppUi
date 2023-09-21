import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/constant/app_color.dart';
import 'package:social_app/core/data/user_json.dart';

class GetBodyMessage extends StatelessWidget {
  const GetBodyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow:
                  [
                    BoxShadow(
                      offset: const Offset(0 ,1),
                      color: AppColor.grey.withOpacity(.4),
                      blurRadius: 15
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Icon(EvaIcons.searchOutline),
                      const SizedBox(width: 5,),
                      Flexible(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for Contacts",
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  color: AppColor.black
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
             Column(
               children: List.generate(usersList.length, (index)
               {
                 return  Padding(
                   padding: const EdgeInsets.only(bottom: 20.0),
                   child: Container(
                     height: 140,
                     decoration: BoxDecoration(
                       color: AppColor.white,
                       borderRadius: BorderRadius.circular(20.0),
                       boxShadow: [
                         BoxShadow(
                             offset: const Offset(0,1),
                             blurRadius: 15.0,
                             color: AppColor.grey.withOpacity(.3)
                         ),
                       ],
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20.0),
                       child: Row(

                         children: [
                           Container(
                             height: 70,
                             width: 70,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(25.0),
                               border: Border.all(
                                 color: AppColor.grey,
                               ),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(1.0),
                               child: Container(
                                 width: 70,
                                 height: 70,
                                 decoration:  BoxDecoration(
                                   borderRadius: BorderRadius.circular(25.0),
                                   image:  DecorationImage(
                                     image: AssetImage(usersList[index]["img"]),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                           const SizedBox(
                             width: 20,
                           ),
                           Flexible(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                  Text(usersList[index]["name"] , style: const TextStyle(
                                     fontSize: 17,
                                     fontWeight: FontWeight.w600,
                                     letterSpacing: 1
                                 ),),
                                 const SizedBox(
                                   height: 4,
                                 ),
                                 SizedBox(
                                   child: Text(usersList[index]["message"] , style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 14,
                                       overflow: TextOverflow.ellipsis,
                                       color: AppColor.grey.withOpacity(.3),
                                       letterSpacing: 1
                                   ),),
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
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
