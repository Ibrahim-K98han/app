import 'package:application_form/task2_pages/task2_main_botton_nav_bar.dart';
import 'package:flutter/material.dart';

import '../task1_pages/main_botton_nav_bar.dart';

class Task2MainPage extends StatefulWidget {
  const Task2MainPage({Key? key}) : super(key: key);

  @override
  State<Task2MainPage> createState() => _Task2MainPageState();
}

class _Task2MainPageState extends State<Task2MainPage> {
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xff4a148c);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight / 3.5),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: CircleAvatar(
              radius: 16, // Image radius
              backgroundImage: AssetImage('images/person.jpg'),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'আমিন',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'আমিন মিয়া',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: screenWidth / 3,
              height: screenHeight / 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(color: primary, fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: primary,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                              'color: Colors.white color: Colors.white, color: Colors.white,'),
                        ),
                        LinearProgressIndicator(
                          minHeight: 10,
                          backgroundColor: primary,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: primary,
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.black54,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Task2MainBottomNavbar(),
    );
  }
}
