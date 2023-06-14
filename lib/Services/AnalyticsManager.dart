import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsManager {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  static final AnalyticsManager _instance = AnalyticsManager._internal();

  factory AnalyticsManager(){
    return _instance;
  }

  AnalyticsManager._internal() {}

  void onLogin() {
    _analytics.logLogin();
  }
}