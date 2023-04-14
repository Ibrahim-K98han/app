import 'package:application_form/task2_pages/task2_main_page.dart';
import 'package:application_form/task3_page/task3_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainPage()
      //home: LoginPage(),
      //home: Task2MainPage(),
      home: Task3HomePage(),
    );
  }
}

