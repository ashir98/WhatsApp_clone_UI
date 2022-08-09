// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_clone_ui/Models/calls_model.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';

class Calls extends StatefulWidget {
  static const String id = 'calls';
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: themeData(),
        darkTheme: darkThemeData(),
        themeMode: currentTheme.currentTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
              itemCount: callData.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text("${callData[index].title}"),
                    leading: CircleAvatar(
                      maxRadius: 23,
                      minRadius: 10,
                      backgroundImage: AssetImage("${callData[index].image}"),
                    ),
                    subtitle: Row(
                      children: [
                        callData[index].callType,
                        SizedBox(
                          width: 1.h,
                        ),
                        Text('${callData[index].time}')
                      ],
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                  )),
        )),
      );
    });
  }
}
