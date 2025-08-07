import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';
import 'package:m_ahmad_task/app/core/services/hive_service.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static late String INITIAL;

  static Future<void> setInitialRoute() async {
    final mainBox = Get.find<MainBox>();

    INITIAL = mainBox.getData(HiveKeys.token) != null ||
            mainBox.getData(HiveKeys.token) != ''
        ? _Paths.HOME
        : _Paths.LOGIN;
  }

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
