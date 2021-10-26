import 'package:boarder_leader/ui/ui_color.dart';
import 'package:boarder_leader/ui/ui_style.dart';
import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  const WidgetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1 / 8,
      alignment: Alignment.center,
      child: Text(
        'Leaderboard',
        style: AppStyle.h3.copyWith(color: AppColors.colorTitle),
      ),
    );
  }
}
