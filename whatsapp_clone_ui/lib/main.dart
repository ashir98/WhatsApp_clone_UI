// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Pages/calls.dart';
import 'package:whatsapp_clone_ui/Pages/camera.dart';
import 'package:whatsapp_clone_ui/Pages/chats.dart';
import 'package:whatsapp_clone_ui/Pages/setting_theme_page.dart';
import 'package:whatsapp_clone_ui/home.dart';
import 'package:whatsapp_clone_ui/Pages/settings.dart';
import 'package:whatsapp_clone_ui/Pages/status.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({Key? key}) : super(key: key);

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Camera.id: (context) => Camera(),
        Chats.id: (context) => Chats(),
        Status.id: (context) => Status(),
        Calls.id: (context) => Calls(),
        Settings.id: (context) => Settings(),
        SettingsThemePage.id: (context) => SettingsThemePage()
      },
    );
  }
}
