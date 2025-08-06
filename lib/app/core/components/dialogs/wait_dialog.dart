import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';

class WaitDialog {
  bool canNavigateBack = true;

  void callBasicLoaderDialog({
    String loaderText = "Default",
    bool isDialogDismissible = true,
    required BuildContext context,
  }) {
    canNavigateBack = isDialogDismissible;
    Get.dialog(
      _basicLoaderDialog(
        defaultText: loaderText,
        context: context,
      ),
      barrierDismissible: isDialogDismissible,
    );
  }

  Widget _basicLoaderDialog({
    String defaultText = "Default",
    required BuildContext context,
  }) {
    return PopScope(
      canPop: canNavigateBack,
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        child: SizedBox(
          height: 75.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HorizontalSpacing(40.w),
              const CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 4,
              ),
              HorizontalSpacing(25.w),
              Expanded(
                child: Text(
                  defaultText,
                  style: Theme.of(context).textTheme.labelLarge!,
                ),
              ),
              HorizontalSpacing(10.w),
            ],
          ),
        ),
      ),
    );
  }
}
