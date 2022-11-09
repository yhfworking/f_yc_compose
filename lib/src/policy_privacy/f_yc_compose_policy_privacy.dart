import 'package:f_yc_compose/f_yc_compose.dart';
import 'package:f_yc_pages/f_yc_pages.dart';
import 'package:f_yc_storages/f_yc_storages.dart';
import 'package:f_yc_utils/f_yc_utils.dart';

class FYcComposePolicyPrivacy {
  static Future<void> checkStatus() async {
    if (!FYcStorages.isSignPrivacyPolicy()) {
      Get.dialog(
          WidgetsPolicyPrivacy(
              primaryColor: FYcCompose.commonConfig.primaryColor,
              userAgreementEvent: () {
                Get.toNamed(FYcPagesRoutesNames.userAgreement);
              },
              privacyPolicyEvent: () {
                Get.toNamed(FYcPagesRoutesNames.privacyPolicy);
              },
              agreeEvent: () {
                FYcStorages.setIsSignPrivacyPolicy();
                Get.back();
              }),
          barrierDismissible: false);
    }
  }
}
