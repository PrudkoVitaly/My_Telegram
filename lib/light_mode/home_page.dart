import 'package:flutter/material.dart';
import 'package:my_telegram/constans.dart';
import 'package:my_telegram/light_mode/drower_light.dart';
import 'package:my_telegram/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text("Telegram"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const DrawerLightScreen(),

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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatModelItems[i].name,
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      chatModelItems[i].message,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              trailing: chatModelItems[i].messageNum != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(chatModelItems[i].time),
                        Container(
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: chatModelItems[i].status
                                ? Colors.green
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
            );
          },
        ),
      ),

    );
  }
}
