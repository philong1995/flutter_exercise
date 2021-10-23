import 'package:flutter_exercise_3/ui/ui_image.dart';

class Infomation {
  final String name, lastMessage, image, time;
  final bool isActive;

  Infomation(this.name, this.lastMessage, this.image, this.time, this.isActive);
}

List data = [
  Infomation(
      'Darius', 'Bổ củi chết cụ mày giờ.', AppImage.darius, '8m ago', true),
  Infomation(
      'Garen', 'Demaciaaaaaaaaaaa !!!!!!!!!', AppImage.garen, '3m ago', false),
  Infomation(
      'Senna', 'Em cắm sừng luxi an rồi', AppImage.senna, '1h ago', false),
  Infomation(
      'Viktor', 'Vẽ không bạn eyyyyyyy', AppImage.viktor, '1m ago', true),
  Infomation(
      'Daxua', 'Solo yasuo chặt tay không.', AppImage.yasuo, '1m ago', true),
  Infomation('Zed', 'Thằng daxua solo thua t mà bùng kèo rồi', AppImage.zed,
      '2h ago', false),
];
