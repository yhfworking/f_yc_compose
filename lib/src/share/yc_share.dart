import 'package:f_yc_config/f_yc_config.dart';
import 'package:share_plus/share_plus.dart';

class YcShare {
  static void sharesWithSystem() async {
    await Share.share(YcConfig.shareTitle());
  }
}
