// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(fillColor: Colors.white),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Color(0xff00a884)),
      indicatorColor: Colors.white,
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
          color: Color(0xff008069)),
      backgroundColor: Colors.white);
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
          color: Color(0xff1f2c34),
          titleTextStyle: TextStyle(color: Color(0xff80909a), fontSize: 25),
          actionsIconTheme: IconThemeData(color: Color(0xff80909a))),
      tabBarTheme: TabBarTheme(labelColor: Color(0xff80909a)),
      scaffoldBackgroundColor: Color(0xff121b22),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff00A884), foregroundColor: Colors.white),
      indicatorColor: Color(0xff00A884),
      popupMenuTheme:
          PopupMenuThemeData(color: Color(0xff1f2c34), elevation: 15),
      iconTheme: IconThemeData(color: Color(0xff80909a)),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Color.fromARGB(255, 31, 44, 52),
      ),
      backgroundColor: Colors.grey);
}
