
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';

class MainBox extends GetxService {
  static const _boxName = 'bio_yap';
  Box? _mainBox;

  // Initialize Hive and open the box
  Future<MainBox> init(String prefixBox) async {
    // Hive.registerAdapter(MessageModelAdapter());
    await Hive.initFlutter();
    _mainBox = await Hive.openBox("$prefixBox$_boxName");
    return this;
  }

  Future<void> addData<T>(String key, T value) async {
    await _mainBox?.put(key, value);
  }

  Future<void> removeData(String key) async {
    await _mainBox?.delete(key);
  }

  void pushToStack(List<String> stack, String value) {
    if (stack.length >= 5) {
      stack.removeAt(0); // Remove the oldest value
    }
    stack.add(value); // Add the new value
  }

  T? getData<T>(String key) {
    return _mainBox?.get(key) as T?;
  }

  Future<void> clearBox() async {
    await _mainBox?.clear();
  }
}
