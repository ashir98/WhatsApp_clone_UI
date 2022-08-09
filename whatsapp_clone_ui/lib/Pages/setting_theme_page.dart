// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsThemePage extends StatefulWidget {
  static const String id = 'settingsTheme';

  const SettingsThemePage({Key? key}) : super(key: key);

  @override
  State<SettingsThemePage> createState() => _SettingsThemePageState();
}

class _SettingsThemePageState extends State<SettingsThemePage> {
  int _value = 1;
  int savedValue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      darkTheme: darkThemeData(),
      themeMode: currentTheme.currentTheme(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Theme",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.light_mode_rounded,
                          color: Color(0xffFFDD06),
                        ),
                      ),
                      Text(
                        'Light Theme',
                        style: TextStyle(fontSize: 17),
                      ),
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              saved();

                              _value = value as int;
                              currentTheme.switchTheme();
                            });
                          })
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.dark_mode_rounded,
                          color: Color(0xff1B447c),
                        ),
                      ),
                      Text(
                        'Dark Theme',
                        style: TextStyle(fontSize: 17),
                      ),
                      Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              saved();
                              // save();
                              _value = value as int;
                              currentTheme.switchTheme();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  saved() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('saved', _value);
  }

  get() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    savedValue = prefs.getInt('saved') ?? 0;
    setState(() {
      _value = savedValue;
    });
  }
}
