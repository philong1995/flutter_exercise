import 'package:boarder_leader/screen/app_bar_rank.dart';
import 'package:boarder_leader/screen/header.dart';
import 'package:boarder_leader/screen/popular.dart';
import 'package:boarder_leader/screen/top_rank.dart';
import 'package:boarder_leader/ui/ui_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boarder Leader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          const WidgetHeader(),
          const WidgetTopRank(),
          const WidgetPopular(),
          const WidgetAppBarRank(),
        ],
      ),
    );
  }
}
