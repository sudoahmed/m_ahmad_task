import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/services/theme_service.dart';
import 'package:m_ahmad_task/dependency_injection.dart';

import 'app/routes/app_pages.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await initServicesAndRepositories();
      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: AppColors.secondary,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: AppColors.secondary,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );

      runApp(
        ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            final themeService = Get.find<ThemeService>();
            return GetMaterialApp(
              title: "M Ahmad Task",
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              theme: themeService.lightTheme,
              builder: (context, widget) {
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: widget!,
                );
              },
            );
          },
        ),
      );
    },
    (error, stackTrace) {
      log('Error: $error');
      log('Stack Trace: $stackTrace');
    },
  );
}
