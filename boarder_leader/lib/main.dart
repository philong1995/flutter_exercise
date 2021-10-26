import 'package:boarder_leader/model/data.dart';
import 'package:boarder_leader/screen/app_bar_rank.dart';
import 'package:boarder_leader/screen/header.dart';
import 'package:boarder_leader/screen/popular.dart';
import 'package:boarder_leader/screen/top_rank.dart';
import 'package:boarder_leader/ui/ui_color.dart';
import 'package:boarder_leader/ui/ui_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boarder Leader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final list = Infomation.data();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          const WidgetHeader(),
          WidgetTopRank(index: 3),
          const WidgetPopular(),
          const WidgetAppBarRank(),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.only(top: 16),
            itemCount: list.length - 3,
            itemBuilder: (context, index) => RankCards(index: index + 3),
          ))
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class RankCards extends StatelessWidget {
  RankCards({Key? key, required this.index}) : super(key: key);

  final list = Infomation.data();
  int index;

  @override
  Widget build(BuildContext context) {
    list.sort((a, b) => b.point!.compareTo(a.point!));
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height * 1 / 14,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      (index + 1).toString(),
                      style: AppStyle.h4,
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(list[index].image!),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        list[index].name!,
                        style: AppStyle.h4,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Text(
                      list[index].point.toString(),
                      style: AppStyle.h5,
                    )),
                Expanded(
                    flex: 1,
                    child: Text(
                      list[index].level.toString(),
                      style: AppStyle.h5,
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
