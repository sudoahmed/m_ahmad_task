import 'package:get/get.dart';
import 'package:m_ahmad_task/app/modules/home/repository/home_repository.dart';
import 'package:m_ahmad_task/app/modules/login/login_repository/login_repository.dart';
import 'app/core/services/api_service.dart';
import 'app/core/services/hive_service.dart';
import 'app/core/services/theme_service.dart';

Future<void> initServicesAndRepositories() async {
  await Get.putAsync<MainBox>(() async => MainBox().init('prefix_'));
  await Get.putAsync<ApiService>(() async => ApiService().init());
  await Get.putAsync<ThemeService>(() async => ThemeService().init());
  await Get.putAsync<LoginRepository>(
      () async => LoginRepository(Get.find<ApiService>(), Get.find<MainBox>()));
  await Get.putAsync<HomeRepository>(
      () async => HomeRepository(Get.find<ApiService>(), Get.find<MainBox>()));
}
