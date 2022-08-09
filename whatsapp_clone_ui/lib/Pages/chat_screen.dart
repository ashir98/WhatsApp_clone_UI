// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, duplicate_ignore, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_clone_ui/Models/chat_messages.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';

class ChatScreen extends StatefulWidget {
  final String title;
  final String image;
  final String message;
  ChatScreen({required this.title, required this.image, required this.message});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        darkTheme: darkThemeData(),
        themeMode: currentTheme.currentTheme(),
        home: Container(
          decoration: BoxDecoration(
              // color: Colors.white,
              // image: DecorationImage(
              //   image: AssetImage('images/bg.jpg'),
              //   fit: BoxFit.cover,
              // ),
              ),
          child: Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              centerTitle: false,
              leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back),
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 2.5.h,
                    backgroundImage: AssetImage(widget.image),
                  ),
                  SizedBox(
                    width: 1.5.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(color: Colors.white, fontSize: 2.5.h),
                      ),
                      Text(
                        'online',
                        style: TextStyle(fontSize: 2.h),
                      )
                    ],
                  ),
                ],
              ),
              actions: [
                Icon(
                  Icons.video_call_sharp,
                  size: 3.h,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.5.h,
                ),
                Icon(
                  Icons.call,
                  size: 2.5.h,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.5.h,
                ),
                Icon(
                  Icons.more_vert_rounded,
                  size: 3.h,
                  color: Colors.white,
                ),
                SizedBox(width: 1.h)
              ],
            ),
            body: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.5.h),
                      child: ChatMessages(
                        message: widget.message,
                      )),
                )),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.teal,
                          cursorHeight: 22,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 2.h,
                              ),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Message'),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.mic),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            fixedSize: Size(50, 50),
                            shape: CircleBorder(side: BorderSide())),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
