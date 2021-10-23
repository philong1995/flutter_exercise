import 'package:flutter/material.dart';
import 'package:flutter_exercise_3/model/info.dart';
import 'package:flutter_exercise_3/ui/ui_color.dart';
import 'package:flutter_exercise_3/ui/ui_style.dart';

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
      title: 'Flutter Exercise 2',
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgrondColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * 1 / 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
                Expanded(flex: 4, child: Container()),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.video_call,
                          color: Colors.black,
                          size: 30,
                        )))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: size.height * 1 / 14,
            alignment: Alignment.centerLeft,
            child: const Text('Messages', style: AppStyle.h3),
          ),
          Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 1))),
            height: size.height * 1 / 6,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 42,
                                    backgroundImage:
                                        AssetImage(data[index].image),
                                  ),
                                  if (data[index].isActive)
                                    Positioned(
                                      right: size.width * 1 / 200,
                                      bottom: size.height * 1 / 200,
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                            )),
                                      ),
                                    )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text(
                                  data[index].name,
                                  style: AppStyle.h5,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => ChatCards(
                        info: data[index],
                      )))
        ],
      ),
    );
  }
}

class ChatCards extends StatelessWidget {
  const ChatCards({Key? key, required this.info}) : super(key: key);

  final Infomation info;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(info.image),
                ),
                if (info.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          )),
                    ),
                  )
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.name,
                    style: AppStyle.h4,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      info.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyle.h52,
                    ),
                  ),
                ],
              ),
            )),
            Opacity(
              opacity: 0.75,
              child: Text(
                info.time,
                maxLines: 1,
                style: AppStyle.h52,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
