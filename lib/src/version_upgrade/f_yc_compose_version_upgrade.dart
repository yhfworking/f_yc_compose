import 'package:f_yc_entity/f_yc_entity.dart';
import 'package:f_yc_storages/f_yc_storages.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:f_yc_widgets/f_yc_widgets.dart';

class FYcComposeVersionUpgrade {
  static Future<void> check() async {
    FYcEntitysRemoteConfig entitysRemoteConfig = FYcStorages.remoteConfig();
    if (entitysRemoteConfig.version != null) {
      FYcEntitysRemoteConfigVersion entitysRemoteConfigVersion =
          entitysRemoteConfig.version!;
      String title = entitysRemoteConfigVersion.title ?? '';
      String note = entitysRemoteConfigVersion.note ?? '';
      String url = entitysRemoteConfigVersion.url ?? '';
      String version = entitysRemoteConfigVersion.version ?? '';
      if (title.isNotEmpty &&
          note.isNotEmpty &&
          url.isNotEmpty &&
          version.isNotEmpty) {
        if (await FYcString.isLessCompareVersion(version)) {
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
