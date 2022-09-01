import 'package:f_yc_utils/f_yc_utils.dart';
import 'package:fl_baidu_mob_stat/fl_baidu_mob_stat.dart';
import 'package:flutter/foundation.dart';

class YcBaiduMtj {
  static Future<void> init(
      {required String androidAppKey, required String iosAppKey}) async {
    final bool isInit = await FlBaiduMobStat()
        .setApiKey(androidKey: androidAppKey, iosKey: iosAppKey);
    await FlBaiduMobStat().setAppChannel('Flutter');
    if (kDebugMode) {
      if (isInit) {
        LoggerUtils.write('百度统计初始化成功！');
      } else {
        LoggerUtils.write('百度统计初始化失败！');
      }
    }
  }
}
