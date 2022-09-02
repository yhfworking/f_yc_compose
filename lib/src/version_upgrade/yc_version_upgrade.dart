import 'package:f_yc_config/f_yc_config.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:f_yc_widgets/f_yc_widgets.dart';

class YcVersionUpgrade {
  static Future<void> check() async {
    YcRemoteConfig ycRemoteConfig = YcConfig.remoteConfig();
    YcRemoteVersion? ycRemoteVersion = ycRemoteConfig.version;
    if (ycRemoteVersion != null) {
      String title = ycRemoteVersion.title ?? '';
      String note = ycRemoteVersion.note ?? '';
      String url = ycRemoteVersion.url ?? '';
      String version = ycRemoteVersion.version ?? '';
      if (title.isNotEmpty &&
          note.isNotEmpty &&
          url.isNotEmpty &&
          version.isNotEmpty) {
        if (await StringUtils.isLessCompareVersion(version)) {
          if (!Get.isDialogOpen!) {
            Get.dialog(
                WidgetsVersionUpgrade(
                  title: title,
                  note: note,
                  url: url,
                ),
                barrierDismissible: false);
          }
        }
      }
    }
  }
}
