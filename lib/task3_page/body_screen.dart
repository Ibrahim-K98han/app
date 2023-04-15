import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xff4a148c);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
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
                        'অনুসন্ধান ফলাফল',
                        style: TextStyle(fontSize: 20, color: primary),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: const [
                        Text(
                          'কোনো ফলাফল পাওয়া যায়নি',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
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
          boxShadow: [BoxShadow(offset: Offset(1, 1), blurRadius: 2.0)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [icons, Text(text)],
      ),
    );
  }
}
