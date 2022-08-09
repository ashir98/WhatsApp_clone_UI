// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Pages/calls.dart';
import 'package:whatsapp_clone_ui/Pages/camera.dart';
import 'package:whatsapp_clone_ui/Pages/chats.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Pages/settings.dart';
import 'package:whatsapp_clone_ui/Pages/status.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum _MenuValues {
  settings,
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: themeData(),
        darkTheme: darkThemeData(),
        themeMode: currentTheme.currentTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('WhatsApp'),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                ),
                SizedBox(
                  width: 1.h,
                ),
                PopupMenuButton<_MenuValues>(
                  icon: Icon(Icons.more_vert_rounded),
                  itemBuilder: ((context) => [
                        PopupMenuItem(
                            value: _MenuValues.settings,
                            child: Text('Settings')),
                      ]),
                  onSelected: (value) {
                    switch (value) {
                      case _MenuValues.settings:
                        Navigator.pushNamed(context, Settings.id);
                        break;
                    }
                  },
                )
              ],
              bottom: TabBar(
                  controller: tabController,
                  indicatorWeight: 0.3.h,
                  labelStyle: TextStyle(fontSize: 1.8.h),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.camera_alt_rounded),
                    ),
                    Tab(
                      text: 'CHATS',
                    ),
                    Tab(
                      text: 'STATUS',
                    ),
                    Tab(
                      text: 'CALLS',
                    )
                  ]),
            ),
            body: TabBarView(
                controller: tabController,
                children: [Camera(), Chats(), Status(), Calls()]),
            floatingActionButton: _getFAB()),
      );
    });
  }

  _getFAB() {
    if (tabController.index == 1) {
      return FloatingActionButton(child: Icon(Icons.chat), onPressed: () {});
    } else if (tabController.index == 2) {
      return FloatingActionButton(
        child: Icon(Icons.camera_alt_rounded),
        onPressed: () {},
      );
    } else if (tabController.index == 3) {
      return FloatingActionButton(child: Icon(Icons.call), onPressed: () {});
    } else {
      return null;
    }
  }
}
