import 'package:app_tracking_transparency/app_tracking_transparency.dart';

class FYcComposeAtt {
  static Future<void> requestAtt() async {
    if (await AppTrackingTransparency.trackingAuthorizationStatus ==
        TrackingStatus.notDetermined) {
      await Future.delayed(const Duration(milliseconds: 200));
      await AppTrackingTransparency.requestTrackingAuthorization();
    }
  }
}
