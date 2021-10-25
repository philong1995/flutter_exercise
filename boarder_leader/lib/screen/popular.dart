import 'package:boarder_leader/ui/ui_color.dart';
import 'package:boarder_leader/ui/ui_style.dart';
import 'package:flutter/material.dart';

class WidgetPopular extends StatelessWidget {
  const WidgetPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      alignment: Alignment.bottomLeft,
      height: MediaQuery.of(context).size.height * 1 / 20,
      child: Text(
        'POPULAR',
        style: AppStyle.h4
            .copyWith(color: AppColors.colorTitle, fontWeight: FontWeight.bold),
      ),
    );
  }
}
