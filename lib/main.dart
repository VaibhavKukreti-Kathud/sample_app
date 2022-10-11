import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sample_app/ui_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormPage(),
    );
  }
}

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  static List profileImageList = [
    'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
  ];
  static List names = [
    'John Andrison',
    'Nat',
    'Mahesh',
    'Ferny',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kBorderRadius),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.2)),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                  Text('Flash'),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius)),
                              backgroundColor: Colors.black.withOpacity(0.4),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                      tileMode: TileMode.mirror),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 15),
                                      ListTile(
                                        onTap: () {},
                                        title: Text(
                                          'Lucy Andrison',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'lucyandrison123@gmail.com',
                                          style: TextStyle(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        leading: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                              CachedNetworkImageProvider(
                                            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
                                          ),
                                        ),
                                      ),
                                      Divider(color: kDividerColor),
                                      CustomListTile(
                                        icon: Icon(
                                          LineIcons.smilingFace,
                                        ),
                                        title: 'Status',
                                      ),
                                      CustomListTile(
                                        icon: Icon(
                                          LineIcons.bellSlash,
                                        ),
                                        title: 'Snooze Notifications',
                                      ),
                                      Divider(color: kDividerColor),
                                      CustomListTile(
                                        icon: Icon(
                                          LineIcons.envelope,
                                        ),
                                        title: 'Invitation',
                                      ),
                                      CustomListTile(
                                        icon: Icon(
                                          LineIcons.archive,
                                        ),
                                        title: 'Archived',
                                      ),
                                      Divider(color: kDividerColor),
                                      CustomListTile(
                                        icon: Icon(
                                          Icons.settings_outlined,
                                        ),
                                        title: 'Settings',
                                      ),
                                      CustomListTile(
                                        icon: Icon(
                                          LineIcons.questionCircle,
                                        ),
                                        title: 'Help and feedback',
                                      ),
                                      Divider(color: kDividerColor),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Privacy Policy',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 12),
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Terms of service',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: const CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return SizedBox(
                    height: 64,
                    width: MediaQuery.of(_).size.width - 32,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: CachedNetworkImageProvider(
                          profileImageList[index],
                        ),
                      ),
                      title: Text(names[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListTile(
        onTap: () {},
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        leading: icon,
        iconColor: Colors.white,
      ),
    );
  }
}
