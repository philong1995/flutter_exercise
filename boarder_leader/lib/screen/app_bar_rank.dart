import 'package:boarder_leader/ui/ui_style.dart';
import 'package:flutter/material.dart';

class WidgetAppBarRank extends StatelessWidget {
  const WidgetAppBarRank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(top: 8),
      height: MediaQuery.of(context).size.height * 1 / 20,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Text(
                    'Rank',
                    style: AppStyle.h5.copyWith(color: Colors.white),
                  )),
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 3,
                  child: Text(
                    'User',
                    style: AppStyle.h5.copyWith(color: Colors.white),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'Point',
                    style: AppStyle.h5.copyWith(color: Colors.white),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'Level',
                    style: AppStyle.h5.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
