import 'package:flutter/material.dart';
import 'package:my_telegram/constans.dart';
import 'package:my_telegram/light_mode/home_page.dart';
import 'package:my_telegram/widgets/drawer_widgets.dart';

class DrawerDarktScreen extends StatefulWidget {
  const DrawerDarktScreen({Key? key}) : super(key: key);

  @override
  State<DrawerDarktScreen> createState() => _DrawerDarktScreenState();
}

class _DrawerDarktScreenState extends State<DrawerDarktScreen> {
  var _icon = Icons.wb_sunny;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff212d3b),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        foregroundImage: NetworkImage(
                            "https://n1s2.hsmedia.ru/b9/b8/a7/b9b8a7ee2bde343db1f518d8e5f6592d/728x546_1_3a79e4ea38760153ced2c4dbde0e7ff3@1706x1280_0xac120003_621268861611755600.jpg"),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_icon == Icons.wb_sunny) {
                            _icon = Icons.brightness_2;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          }
                        },
                        icon: Icon(
                          _icon = Icons.wb_sunny,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Maria Jenkins",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "+ 050 366 66 66",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const DrawerItemWidget(
            icon: Icons.people_outline,
            title: "Создать группу",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.person_outline_rounded,
            title: "Контакты",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.call_outlined,
            title: "Звонки",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.accessibility,
            title: "Люди рядом",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.bookmark_border,
            title: "Избранное",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.settings,
            title: "Настройки",
            color: Colors.white,
          ),
          const Divider(thickness: 1, color: Colors.white),
          const DrawerItemWidget(
            icon: Icons.person_add_alt_1_outlined,
            title: "Пригласить друзей",
            color: Colors.white,
          ),
          const DrawerItemWidget(
            icon: Icons.help_outline,
            title: "Возможности Telegram",
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
