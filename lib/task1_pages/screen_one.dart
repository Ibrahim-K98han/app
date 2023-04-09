import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xff4a148c);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: (InputDecoration(
                          hintText: 'Search',
                        )),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.green),
                          onPressed: () {},
                          child: Text('Search'),
                        )),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 15,
                    width: 5,
                    color: primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'সনদ সেবা সমূহ',
                    style: TextStyle(fontSize: 20, color: primary),
                  ),
                ),
              ],
            ),
            Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     ),
                     sonodo(
                       icons: Icon(Icons.person),
                       text: 'datt',
                     )
                   ],
                 ),
               ),
               Align(
                 alignment: Alignment.centerRight,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                     onPressed: (){}, child: Text('সকল সনদ সেবা')
                 ),
               )
             ],
           ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 15,
                    width: 5,
                    color: primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'অন্যান্য সেবা',
                    style: TextStyle(fontSize: 20, color: primary),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 15,
                    width: 5,
                    color: primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'জনপ্রিয় সেবা',
                    style: TextStyle(fontSize: 20, color: primary),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 15,
                    width: 5,
                    color: primary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'নোটিশ সমূহ',
                    style: TextStyle(fontSize: 20, color: primary),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      ),
                      sonodo(
                        icons: Icon(Icons.person),
                        text: 'datt',
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
      ),
    ),
        ));
  }
}

class sonodo extends StatelessWidget {
  sonodo({Key? key, required this.icons, required this.text}) : super(key: key);
  Icon icons;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: Offset(1,1),
              blurRadius: 2.0
            )
          ]
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [icons, Text(text)],
      ),
    );
  }
}
