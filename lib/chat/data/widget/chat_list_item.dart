


import 'package:chat_app_ui/chat/data/chat_model.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key, required this.model});
  final ChatModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage( model.image),
      ),
      title:  Text(
        model.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle:  Text(
       model.message,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(model.time),
    );
  }

  
}
