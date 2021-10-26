import 'package:boarder_leader/ui/ui_image.dart';

class Infomation {
  final String? name, image;
  final num? point, level;

  Infomation(this.name, this.point, this.image, this.level);

  static List<Infomation> data() {
    return [
      Infomation('Thresh', 37723, AppImage.thresh, 8),
      Infomation('Leona', 38785, AppImage.leona, 8),
      Infomation('Yone', 39352, AppImage.yone, 9),
      Infomation('Twisted Fate', 40020, AppImage.tf, 9),
      Infomation('Zed', 40210, AppImage.zed, 9),
      Infomation('Yasuo', 41754, AppImage.yasuo, 9),
      Infomation('Viktor', 42123, AppImage.viktor, 9),
      Infomation('Senna', 50442, AppImage.senna, 10),
      Infomation('Garen', 51231, AppImage.garen, 10),
      Infomation('Darius', 59785, AppImage.darius, 10),
    ];
  }
}
