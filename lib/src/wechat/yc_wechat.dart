import 'package:f_yc_config/f_yc_config.dart';
import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:fluwx_no_pay/fluwx_no_pay.dart';

class YcWechat {
  static Future<void> init(String wxAppId, String wxUniversalLink) async {
    await registerWxApi(
        appId: wxAppId,
        doOnAndroid: true,
        doOnIOS: true,
        universalLink: wxUniversalLink);
  }

  static void shareAppToWxSession() {
    LoadingUtils.show();
    Future.delayed(const Duration(seconds: 2), () {
      LoadingUtils.dismiss();
    });
    shareToWeChat(WeChatShareWebPageModel(YcConfig.shareUrl(),
        title: YcConfig.shareTitle(),
        description: YcConfig.shareDes(),
        thumbnail: WeChatImage.network(YcConfig.shareLogo()),
        scene: WeChatScene.SESSION));
  }

  static void shareAppToWxTimeline() {
    LoadingUtils.show();
    Future.delayed(const Duration(seconds: 2), () {
      LoadingUtils.dismiss();
    });
    shareToWeChat(WeChatShareWebPageModel(YcConfig.shareUrl(),
        title: YcConfig.shareTitle(),
        description: YcConfig.shareDes(),
        thumbnail: WeChatImage.network(YcConfig.shareLogo()),
        scene: WeChatScene.TIMELINE));
  }

  static void openCustomerService() {
    String wxKfServiceUrl = YcConfig.wxKfServiceUrl();
    String wxKfCorpId = YcConfig.wxKfCorpId();
    if (wxKfServiceUrl.isNotEmpty && wxKfCorpId.isNotEmpty) {
      LoadingUtils.show();
      Future.delayed(const Duration(seconds: 2), () {
        LoadingUtils.dismiss();
      });
      openWeChatCustomerServiceChat(url: wxKfServiceUrl, corpId: wxKfCorpId);
    }
  }
}
