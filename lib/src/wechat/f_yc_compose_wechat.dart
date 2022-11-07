import 'package:f_yc_compose/f_yc_compose.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class FYcComposeWechat {
  static Future<void> init(String wxAppId, String wxUniversalLink) async {
    await registerWxApi(
        appId: wxAppId,
        doOnAndroid: true,
        doOnIOS: true,
        universalLink: wxUniversalLink);
  }

  static void shareAppToWxSession() {
    EasyLoading.show();
    Future.delayed(const Duration(seconds: 2), () {
      EasyLoading.dismiss();
    });
    shareToWeChat(WeChatShareWebPageModel(FYcCompose.commonConfig.shareUrl,
        title: FYcCompose.commonConfig.shareTitle,
        description: FYcCompose.commonConfig.shareDes,
        thumbnail: WeChatImage.network(FYcCompose.commonConfig.shareLogo),
        scene: WeChatScene.SESSION));
  }

  static void shareAppToWxTimeline() {
    EasyLoading.show();
    Future.delayed(const Duration(seconds: 2), () {
      EasyLoading.dismiss();
    });
    shareToWeChat(WeChatShareWebPageModel(FYcCompose.commonConfig.shareUrl,
        title: FYcCompose.commonConfig.shareTitle,
        description: FYcCompose.commonConfig.shareDes,
        thumbnail: WeChatImage.network(FYcCompose.commonConfig.shareLogo),
        scene: WeChatScene.TIMELINE));
  }

  static void openCustomerService() {
    String wxKfServiceUrl = FYcCompose.wechatConfig.kfServiceUrl;
    String wxKfCorpId = FYcCompose.wechatConfig.kfCorpId;
    if (wxKfServiceUrl.isNotEmpty && wxKfCorpId.isNotEmpty) {
      EasyLoading.show();
      Future.delayed(const Duration(seconds: 2), () {
        EasyLoading.dismiss();
      });
      openWeChatCustomerServiceChat(url: wxKfServiceUrl, corpId: wxKfCorpId);
    }
  }
}
