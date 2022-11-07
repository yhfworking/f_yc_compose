import 'package:f_yc_compose/f_yc_compose.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:launch_review/launch_review.dart';

class FYcComposeLaunchReview {
  static void toStoreReview() {
    if (FYcCompose.commonConfig.appStoreId.isNotEmpty &&
        FYcCompose.commonConfig.packageName.isNotEmpty) {
      EasyLoading.show();
      Future.delayed(const Duration(seconds: 2), () {
        EasyLoading.dismiss();
      });
      LaunchReview.launch(
          androidAppId: FYcCompose.commonConfig.packageName,
          iOSAppId: FYcCompose.commonConfig.appStoreId);
    }
  }
}
