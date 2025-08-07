import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';

abstract class GeneralMethods {
  static debugLog(String message) {
    if (kDebugMode) {
      log(message);
    }
  }

  static void logPrettyJson(Map<String, dynamic> jsonData) {
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String prettyJson = encoder.convert(jsonData);
    debugLog(prettyJson);
  }
}
