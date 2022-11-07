import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:fl_baidu_mob_stat/fl_baidu_mob_stat.dart';
import 'package:flutter/foundation.dart';

class FYcComposeBaiduMtj {
  static Future<void> init(
      {required String androidAppKey, required String iosAppKey}) async {
    final bool isInit = await FlBaiduMobStat()
        .setApiKey(androidKey: androidAppKey, iosKey: iosAppKey);
    await FlBaiduMobStat().setAppChannel('Flutter');
    if (kDebugMode) {
      if (isInit) {
        FYcLogger.write('百度统计初始化成功！');
      } else {
        FYcLogger.write('百度统计初始化失败！');
      }
    }
  }
}
