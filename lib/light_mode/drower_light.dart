import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_telegram/constans.dart';
import 'package:my_telegram/dark_mode/home_page_dark.dart';
import 'package:my_telegram/light_mode/home_page.dart';
import 'package:my_telegram/widgets/drawer_widgets.dart';

class DrawerLightScreen extends StatefulWidget {
  const DrawerLightScreen({Key? key}) : super(key: key);

  @override
  State<DrawerLightScreen> createState() => _DrawerLightScreenState();
}

class _DrawerLightScreenState extends State<DrawerLightScreen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  var _icon = Icons.brightness_2;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 210.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Maria Jenkins",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "+ 050 366 66 66",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                background: Expanded(
                  child: Image.network(
                    "https://n1s2.hsmedia.ru/b9/b8/a7/b9b8a7ee2bde343db1f518d8e5f6592d/728x546_1_3a79e4ea38760153ced2c4dbde0e7ff3@1706x1280_0xac120003_621268861611755600.jpg",
                    width: double.infinity,

                  ),
                ),

                // CircleAvatar(
                //   // radius: 35,
                //
                //   foregroundImage: NetworkImage(
                //       "https://n1s2.hsmedia.ru/b9/b8/a7/b9b8a7ee2bde343db1f518d8e5f6592d/728x546_1_3a79e4ea38760153ced2c4dbde0e7ff3@1706x1280_0xac120003_621268861611755600.jpg"),
                // ),
                // background: DrawerHeader(
                //   decoration: BoxDecoration(color: AppColors.primaryColor),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           const CircleAvatar(
                //             radius: 35,
                //             foregroundImage: NetworkImage(
                //                 "https://n1s2.hsmedia.ru/b9/b8/a7/b9b8a7ee2bde343db1f518d8e5f6592d/728x546_1_3a79e4ea38760153ced2c4dbde0e7ff3@1706x1280_0xac120003_621268861611755600.jpg"),
                //           ),
                //           IconButton(
                //             icon: Icon(
                //               _icon,
                //               color: Colors.white,
                //             ),
                //             onPressed: () {
                //               if (_icon == Icons.brightness_2) {
                //                 _icon = Icons.wb_sunny;
                //                 Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => HomeDark()),
                //                 );
                //               } else {
                //                 _icon = Icons.brightness_2;
                //               }
                //             },
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),

      // child: Column(
      //   children: [
      //     Container(
      //       width: double.infinity,
      //       child: DrawerHeader(
      //         decoration: BoxDecoration(color: AppColors.primaryColor),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 const CircleAvatar(
      //                   radius: 35,
      //                   foregroundImage: NetworkImage(
      //                       "https://n1s2.hsmedia.ru/b9/b8/a7/b9b8a7ee2bde343db1f518d8e5f6592d/728x546_1_3a79e4ea38760153ced2c4dbde0e7ff3@1706x1280_0xac120003_621268861611755600.jpg"),
      //                 ),
      //                 IconButton(
      //                   icon: Icon(
      //                     _icon,
      //                     color: Colors.white,
      //                   ),
      //                   onPressed: () {
      //                     if (_icon == Icons.brightness_2) {
      //                       _icon = Icons.wb_sunny;
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => HomeDark()),
      //                       );
      //                     } else {
      //                       _icon = Icons.brightness_2;
      //                     }
      //                   },
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(height: 10),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Text(
      //                       "Maria Jenkins",
      //                       style: TextStyle(color: Colors.white, fontSize: 18),
      //                     ),
      //                     const SizedBox(height: 5),
      //                     Text(
      //                       "+ 050 366 66 66",
      //                       style: TextStyle(
      //                         color: Colors.white.withOpacity(0.6),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 IconButton(
      //                   onPressed: () {},
      //                   icon: const Icon(
      //                     Icons.keyboard_arrow_down,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.people_outline,
      //       title: "Создать группу",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.person_outline_rounded,
      //       title: "Контакты",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.call_outlined,
      //       title: "Звонки",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.accessibility,
      //       title: "Люди рядом",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.bookmark_border,
      //       title: "Избранное",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.settings,
      //       title: "Настройки",
      //       color: Colors.black,
      //     ),
      //     const Divider(thickness: 1),
      //     const DrawerItemWidget(
      //       icon: Icons.person_add_alt_1_outlined,
      //       title: "Пригласить друзей",
      //       color: Colors.black,
      //     ),
      //     const DrawerItemWidget(
      //       icon: Icons.help_outline,
      //       title: "Возможности Telegram",
      //       color: Colors.black,
      //     ),
      //   ],
      // ),
    );
  }
}
