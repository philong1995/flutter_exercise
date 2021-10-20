import 'package:flutter/material.dart';
import 'package:flutter_exercise_2/ui/grid.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
    return Scaffold(
        backgroundColor: Colors.white,

        /**
        * phần cuối
        */

        body: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemBuilder: (context, index) => const GridUI(),
          staggeredTileBuilder: (index) => StaggeredTile.count(
              // index đầu tiên là xét độ rồng của 1 hàng, câu điều kiện : "index chia 5 có phần dư = 0, nếu đúng thì độ rộng của view là 2 (vì 1 hàng tối đa là 2 ô view, nên khi view = 2 thì full(width = 1), nếu sai thì độ rộng của view = 1, bắt đầu từ ô thứ 0 ) "
              (index % 5 == 0) ? 2 : 1,
              // index thứ 2 là xét độ dài của 1 cột, câu điều kiện : "index chia 5 có phần dư = 0, nếu đúng thì độ dài của view là 3 (vì 1 ô có width = height, nếu sai thì độ rộng của view = 1) ) "
              (index % 5 == 0) ? 3 : 1),
        )

        /**
       * Phần lưới
       */

        // body: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       // số lượng ô trên 1 hàng
        //       crossAxisCount: 4,
        //       //khoảng cách giữa 2 ô trên 1 hàng
        //       crossAxisSpacing: 8,
        //       //khoảng cách giữa 2 ô trên 1 cột
        //       mainAxisSpacing: 8),
        //   children: [for (int i = 0; i < 35; i++) const GridUI()],
        // ),

        /**
       * Phần hàng và cột
       */

        // body: ListView.builder(
        //     // với row là Axis.horizontal, còn column là Axis.vertical
        //     scrollDirection: Axis.vertical,
        //     itemCount: 7,
        //     itemBuilder: (context, index) {
        //       return const ColumnUI();
        //     })
        );
  }
}
