// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Pages/chat_screen.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';
import 'package:whatsapp_clone_ui/Models/chat_model.dart';

class Chats extends StatefulWidget {
  static const String id = 'chats';
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) => ListTile(
              title: Text("${chatData[index].title}"),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                    size: 18,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("${chatData[index].subtitle}"),
                ],
              ),
              leading: CircleAvatar(
                maxRadius: 23,
                minRadius: 10,
                backgroundImage: AssetImage("${chatData[index].image}"),
              ),
              trailing: Text(
                "${chatData[index].trailing}",
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChatScreen(
                      message: "${chatData[index].subtitle}",
                      title: "${chatData[index].title}",
                      image: "${chatData[index].image}"))),
            ));
  }
}
