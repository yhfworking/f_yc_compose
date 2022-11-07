import 'package:f_yc_compose/f_yc_compose.dart';
import 'package:f_yc_storages/f_yc_storages.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:f_yc_widgets/f_yc_widgets.dart';

class FYcComposePolicyPrivacy {
  static Future<void> checkStatus() async {
    if (!FYcStorages.isSignPrivacyPolicy()) {
      Get.dialog(
          WidgetsPolicyPrivacy(
            primaryColor: FYcCompose.commonConfig.primaryColor,
            userAgreementEventCallBack: () {
              // Get.toNamed(YcRoutesNames.userAgreement);
            },
            privacyPolicyEventCallBack: () {
              // Get.toNamed(YcRoutesNames.privacyPolicy);
            },
          ),
          barrierDismissible: false);
    }
  }
}
