import 'package:f_yc_compose/f_yc_compose.dart';
import 'package:share_plus/share_plus.dart';

class FYcComposeShare {
  static void sharesWithSystem() async {
    await Share.share(FYcCompose.commonConfig.shareTitle);
  }
}
