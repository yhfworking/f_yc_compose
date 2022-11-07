library f_yc_compose;

import 'package:f_yc_config/f_yc_config.dart';
export 'src/baidu/mtj/f_yc_compose_baidu_mtj.dart';
export 'src/att/f_yc_compose_att.dart';
export 'src/launch_review/f_yc_compose_launch_review.dart';
export 'src/connectivity/f_yc_compose_connectivity.dart';
export 'src/share/f_yc_compose_share.dart';
export 'src/version_upgrade/f_yc_compose_version_upgrade.dart';
export 'src/wechat/f_yc_compose_wechat.dart';
export 'src/policy_privacy/f_yc_compose_policy_privacy.dart';
export 'package:fluwx_no_pay/fluwx_no_pay.dart';

class FYcCompose {
  static FYcConfigCommonConfig commonConfig = FYcConfigConfigurator.instance
      .getConfig(configId: KIT_CONFIG_ID)
      .commonConfig;
  static FYcConfigWechatConfig wechatConfig = FYcConfigConfigurator.instance
      .getConfig(configId: KIT_CONFIG_ID)
      .wechatConfig;
}
