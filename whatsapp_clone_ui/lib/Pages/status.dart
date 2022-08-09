// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_clone_ui/Models/status_model.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';

class Status extends StatefulWidget {
  static const String id = 'status';
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: themeData(),
        darkTheme: darkThemeData(),
        themeMode: currentTheme.currentTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('My Status'),
                subtitle: Text('Tap to add status'),
                leading: CircleAvatar(
                  maxRadius: 23,
                  minRadius: 10,
                  backgroundImage: AssetImage('images/1.jpg'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    'Recent updates',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xff6B7A84)),
                  ),
                ],
              ),
              MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: StatusModel.statusData.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text('${StatusModel.statusData[index].title}'),
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.teal, width: 2)),
                            child: CircleAvatar(
                              maxRadius: 23,
                              minRadius: 10,
                              backgroundImage: AssetImage(
                                  '${StatusModel.statusData[index].image}'),
                            ),
                          ),
                          subtitle:
                              Text("${StatusModel.statusData[index].subtitle}"),
                        )),
              ),
            ],
          ),
        )),
      );
    });
  }
}
