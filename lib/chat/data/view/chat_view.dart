import 'package:chat_app_ui/chat/data/widget/chat_list_item.dart';
import 'package:chat_app_ui/chat/data/chat_model.dart';
import 'package:chat_app_ui/chat/data/widget/favorite_contact.dart';

import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Chats',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: const [Icon(Icons.settings, color: Colors.white)],
      ),
      body: Column(
        children: [
          const FavoriteContactWidget(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: ListView.separated(
                itemCount: chatlist.length,
                separatorBuilder: (BuildContext context, int index) {
                  //ignore: prefer_const_constructors
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ChatListItem(
                    model: chatlist[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
