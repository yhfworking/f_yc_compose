import 'package:f_yc_config/f_yc_config.dart';
import 'package:share_plus/share_plus.dart';

class ComponentsShare {
  static void sharess() async {
    await Share.share(YcConfig.shareTitle());
  }
}
