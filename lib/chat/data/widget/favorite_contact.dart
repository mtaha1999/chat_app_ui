import 'package:chat_app_ui/chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class FavoriteContactWidget extends StatelessWidget {
  const FavoriteContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Favorite Contacts',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(chatlist[index].image),
                              ),
                              const CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.blueAccent,
                              ),
                              const CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            chatlist[index].name.split(' ')[0],
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: chatlist.length,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
