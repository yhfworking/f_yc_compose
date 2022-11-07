import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:f_yc_widgets/f_yc_widgets.dart';

class FYcComposeConnectivity {
  static Future<void> checkNetwork() async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Get.dialog(const WidgetsNetworkTips(), barrierDismissible: false);
    }
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        Get.dialog(const WidgetsNetworkTips(), barrierDismissible: false);
      } else {
        Get.until((route) {
          return (Get.isDialogOpen != null && Get.isDialogOpen == false);
        });
      }
    });
  }
}
