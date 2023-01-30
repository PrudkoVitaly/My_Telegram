import 'package:flutter/material.dart';
import 'package:my_telegram/constans.dart';
import 'package:my_telegram/dark_mode/drawer_dark.dart';
import 'package:my_telegram/light_mode/drower_light.dart';
import 'package:my_telegram/models/models.dart';

class HomeDark extends StatefulWidget {
  const HomeDark({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeDark> createState() => _HomeDarkState();
}

class _HomeDarkState extends State<HomeDark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d2733),
      appBar: AppBar(
        backgroundColor: const Color(0xff212d3b),
        title: const Text("Telegram"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          ),
        ],
      ),

      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff1d2733),
          //This will change the drawer background to blue.
          //other styles
        ),
        child: const DrawerDarktScreen(),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          separatorBuilder: (_, __) {
            return const Padding(
              padding: EdgeInsets.only(left: 90),
              child: Divider(thickness: 1),
            );
          },
          itemCount: chatModelItems.length,
          itemBuilder: (context, i) {
            return ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(chatModelItems[i].imgPath),
              ),
              title: Text(
                chatModelItems[i].name_group,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatModelItems[i].name,
                    style: const TextStyle(
                      color: Color(0xff7d8b98),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    chatModelItems[i].message,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              trailing: chatModelItems[i].messageNum != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          chatModelItems[i].time,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Container(
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: chatModelItems[i].status
                                ? Colors.blue
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              chatModelItems[i].messageNum.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(chatModelItems[i].time),
                        const SizedBox(height: 7),
                      ],
                    ),

              // trailing: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Text("22:07"),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.grey,
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //       child: const Padding(
              //         padding: EdgeInsets.all(7.0),
              //         child: Text(
              //           "789",
              //           style: TextStyle(
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.create),
      ),
      // drawer: DrawerLightScreen(),
    );
  }
}
