import 'package:application_form/task2_pages/task2_main_botton_nav_bar.dart';
import 'package:flutter/material.dart';

import '../task1_pages/main_botton_nav_bar.dart';
import '../task1_pages/screen_one.dart';
import 'body_screen.dart';

class Task3HomePage extends StatefulWidget {
  const Task3HomePage({Key? key}) : super(key: key);

  @override
  State<Task3HomePage> createState() => _Task3HomePageState();
}

class _Task3HomePageState extends State<Task3HomePage> {
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xff4a148c);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: setPage(),
      ),
    );

    //   Scaffold(
    //   appBar: PreferredSize(
    //     preferredSize: Size.fromHeight(110),
    //     child: Stack(
    //       children: [
    //         AppBar(
    //           elevation: 0,
    //           leading: Padding(
    //               padding:
    //               const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    //               child: Icon(Icons.arrow_back)),
    //           title: Center(
    //             child: Text(
    //               'অনুসন্ধান',
    //               style: TextStyle(fontSize: 18),
    //             ),
    //           ),
    //           backgroundColor: primary,
    //           actions: [
    //             IconButton(
    //               onPressed: () {},
    //               icon: CircleAvatar(
    //                 backgroundColor: Colors.white,
    //                 child: Icon(
    //                   Icons.notifications_none,
    //                   color: Colors.black54,
    //                   size: 25,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         Positioned(
    //           bottom: 0,
    //           left: 0,
    //           right: 0,
    //           top: 115,
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Column(
    //               children: [
    //                 Card(
    //                   elevation: 10,
    //                   child: Row(
    //                     children: [
    //                       Expanded(
    //                         flex: 2,
    //                         child: TextField(
    //                           decoration: (
    //                               InputDecoration(
    //                                 hintText: 'Search',
    //                               )
    //                           ),
    //                         ),
    //                       ),
    //                       Expanded(
    //                           flex: 1,
    //                           child: ElevatedButton(
    //                             style: ElevatedButton.styleFrom(
    //                                 elevation: 0,
    //                                 backgroundColor: Colors.green),
    //                             onPressed: () {},
    //                             child: Text('Search'),
    //                           )),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //   body: const Padding(
    //     padding: EdgeInsets.only(top: 30),
    //     child: BodyScreen(),
    //   ),
    // );
  }

  Widget setPage() {
    return Stack(
      children: [
        Container(
          color: Colors.deepPurple,
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0),
                child: Center(
                  child: Text(
                    "অনুসন্ধান",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
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

        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.only(top: 50),
              child: BodyScreen(),
            ),
          ),
        ), // Required some widget in between to float AppBar

        Positioned(
          // To take AppBar Size only
          top: 110.0,
          left: 20.0,
          right: 20.0,
          child: AppBar(
            backgroundColor: Colors.white,
            primary: false,
            title: const TextField(
                decoration: InputDecoration(
                    hintText: "অনুসন্ধান করুন",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey))),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      elevation: 0,
                      backgroundColor: Colors.green),
                  onPressed: () {},
                  child: const Text('অনুসন্ধান')),
            ],
          ),
        )
      ],
    );
  }
}
