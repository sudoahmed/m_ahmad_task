import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors.dart';
import 'package:get/get.dart';

class ThemeService {
  Future<ThemeService> init() async {
    return this;
  }

  ThemeData get lightTheme => ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: true,
        primaryColor: AppColors.primary,
        brightness: Brightness.light,
        hintColor: AppColors.slateGray,
        focusColor: AppColors.secondary,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        checkboxTheme: CheckboxThemeData(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          side: const BorderSide(
            color: AppColors.slateGray,
            width: 1,
          ),
          visualDensity: VisualDensity.compact,
          checkColor: const WidgetStatePropertyAll(AppColors.white),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.primary;
            }
            return Colors.transparent;
          }),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: AppColors.slateGray,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: AppColors.slateGray.withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.slateGray, width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primary, width: 2.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
                color: AppColors.slateGray.withOpacity(0.1), width: 1.w),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28.sp,
            color: AppColors.secondary,
            fontWeight: FontWeight.w700,
          ),
          headlineSmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: AppColors.secondary,
          ),
          titleLarge: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.secondary,
          ),
          titleMedium: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.secondary,
          ),
          titleSmall: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
          bodyLarge: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.secondary,
          ),
          bodySmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.secondary,
          ),
          labelSmall: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.secondary,
          ),
        ),
      );
}
