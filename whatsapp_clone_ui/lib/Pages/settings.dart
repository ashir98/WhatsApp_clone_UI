// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp_clone_ui/Pages/setting_theme_page.dart';
import 'package:whatsapp_clone_ui/Theme/config.dart';
import 'package:whatsapp_clone_ui/Theme/theme.dart';

class Settings extends StatefulWidget {
  static const String id = 'settings';
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    currentTheme.addListener(() {
      if (this.mounted) {
        setState(() {});
      }
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
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 2.5.h),
            ),
            leading: IconButton(
              onPressed: (() => Navigator.of(context).pop()),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 1.5.h, vertical: 1.5.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4.h,
                      backgroundImage: AssetImage('images/1.jpg'),
                    ),
                    SizedBox(
                      width: 1.5.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ashir ',
                          style: TextStyle(fontSize: 2.5.h),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Text(
                          "Can't talk Whatsapp only",
                          style: TextStyle(fontSize: 1.8.h, color: Colors.grey),
                        )
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 11.h,
                      ),
                    ),
                    Icon(
                      Icons.qr_code,
                      size: 3.5.h,
                      color: Colors.teal,
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.5.h),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: Icon(Icons.key_rounded),
                      title: Text('Account'),
                      subtitle: Text('Privacy, security, change number'),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsThemePage())),
                      child: ListTile(
                        leading: Icon(Icons.chat),
                        title: Text('Theme'),
                        subtitle: Text('Theme, wallpaper'),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notifications'),
                      subtitle: Text('Message, group & call tones'),
                    ),
                    ListTile(
                      leading: Icon(Icons.storage_rounded),
                      title: Text('Storage and data'),
                      subtitle: Text('network usage, auto download'),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_rounded),
                      title: Text('Help'),
                      subtitle: Text('Help center, contact us, privacy policy'),
                    ),
                    ListTile(
                      leading: Icon(Icons.group_rounded),
                      title: Text('Invite a friend'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'from',
                    style: TextStyle(color: Color(0xff80909a)),
                  ),
                  Text(
                    'Ashir',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 2.0.h),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
