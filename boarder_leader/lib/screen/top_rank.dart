import 'package:boarder_leader/model/data.dart';
import 'package:boarder_leader/ui/ui_color.dart';

import 'package:boarder_leader/ui/ui_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetTopRank extends StatelessWidget {
  WidgetTopRank({Key? key, required this.index}) : super(key: key);
  final list = Infomation.data();
  int index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    list.sort((a, b) => b.point!.compareTo(a.point!));
    return SizedBox(
      height: size.height * 1 / 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(children: [
            Container(
              padding: const EdgeInsets.only(top: 6),
              height: size.height * 0.18,
              width: size.width * 0.27,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(list[1].image!),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        list[1].name!,
                        style: AppStyle.h4.copyWith(color: AppColors.rankColor),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(list[1].point!.toString() + ' pts',
                          style: AppStyle.h6)),
                  Expanded(
                      flex: 1,
                      child: Text('Level ' + list[1].level!.toString(),
                          style: AppStyle.h6))
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                child: const Text(
                  '2',
                  style: AppStyle.h5,
                  textAlign: TextAlign.center,
                ),
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: AppColors.rankSilverInSide,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.colorTitle, width: 2)),
              ),
            )
          ]),
          Stack(children: [
            Container(
              height: size.height * 0.2,
              width: size.width * 0.3,
              padding: const EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 3,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(list[0].image!),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        list[0].name!,
                        style: AppStyle.h4.copyWith(color: AppColors.rankColor),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(list[0].point!.toString() + ' pts',
                          style: AppStyle.h6)),
                  Expanded(
                      flex: 1,
                      child: Text('Level ' + list[0].level!.toString(),
                          style: AppStyle.h6))
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                child: const Text(
                  '1',
                  style: AppStyle.h5,
                  textAlign: TextAlign.center,
                ),
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                    color: AppColors.rankGoldInSide,
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: AppColors.rankGoldOutside, width: 4)),
              ),
            )
          ]),
          Stack(children: [
            Container(
              height: size.height * 0.18,
              width: size.width * 0.27,
              padding: const EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(list[2].image!),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        list[2].name!,
                        style: AppStyle.h4.copyWith(color: AppColors.rankColor),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(list[2].point!.toString() + ' pts',
                          style: AppStyle.h6)),
                  Expanded(
                      flex: 1,
                      child: Text('Level ' + list[2].level!.toString(),
                          style: AppStyle.h6))
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: AppColors.rankCurenInSide,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.colorTitle, width: 2)),
                child: const Text(
                  '3',
                  style: AppStyle.h5,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
