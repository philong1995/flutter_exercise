import 'package:boarder_leader/ui/ui_image.dart';
import 'package:flutter/material.dart';

class WidgetTopRank extends StatelessWidget {
  const WidgetTopRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1 / 5,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 0.16,
            width: size.width * 0.28,
            color: Colors.white,
            child: Column(
              children: [
                const Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AppImage.darius),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          Container(
            height: size.height * 0.18,
            width: size.width * 0.32,
            color: Colors.white,
            child: Column(
              children: [
                const Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AppImage.darius),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          Container(
            height: size.height * 0.16,
            width: size.width * 0.28,
            color: Colors.white,
            child: Column(
              children: [
                const Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(AppImage.darius),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
