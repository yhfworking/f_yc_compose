import 'package:f_yc_config/f_yc_config.dart';
import 'package:f_yc_pages/f_yc_pages.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:f_yc_widgets/f_yc_widgets.dart';
import 'package:flutter/material.dart';

class YcPolicyPrivacy {
  static Future<void> checkStatus() async {
    Color primaryColor = YcConfig.primaryColor();
    bool isSign =
        GetStorage().read('Storage_Key_Is_Sign_Privacy_Policy') ?? false;
    if (!isSign) {
      Get.dialog(
          WidgetsPolicyPrivacy(
            primaryColor: primaryColor,
            userAgreementEventCallBack: () {
              Get.toNamed(YcRoutesNames.userAgreement);
            },
            privacyPolicyEventCallBack: () {
              Get.toNamed(YcRoutesNames.privacyPolicy);
            },
          ),
          barrierDismissible: false);
    }
  }
}
