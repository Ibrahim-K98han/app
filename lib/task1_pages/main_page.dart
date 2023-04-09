import 'package:flutter/material.dart';

import 'main_botton_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: const Center(
          child: Text(
            'আমিন মিয়ার বিস্তারিত',
            style: TextStyle(fontSize: 15),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 25,
              )),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 16, // Image radius
              backgroundImage: AssetImage('images/person.jpg'),
            ),
          ),
        ],
      ),
      body: MainBottomNavbar(),
    );
  }
}
