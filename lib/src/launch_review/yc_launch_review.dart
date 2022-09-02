import 'package:f_yc_config/f_yc_config.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:launch_review/launch_review.dart';

class YcLaunchReview {
  static void toStoreReview() {
    String appStoreAppId = YcConfig.appStoreId();
    String packageName = YcConfig.packageName();
    if (appStoreAppId.isNotEmpty && packageName.isNotEmpty) {
      LoadingUtils.show();
      Future.delayed(const Duration(seconds: 2), () {
        LoadingUtils.dismiss();
      });
      LaunchReview.launch(androidAppId: packageName, iOSAppId: appStoreAppId);
    }
  }
}
