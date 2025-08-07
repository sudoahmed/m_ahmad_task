import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';

class DailyTargetCards extends StatelessWidget {
  const DailyTargetCards({
    super.key,
    required this.cardTitle,
    required this.amount,
    required this.perUnit,
    required this.colofulFigures,
  });

  final String cardTitle, amount, perUnit;
  final Color colofulFigures;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.h),
      margin: EdgeInsets.all(4.sp),
      width: 158.w,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(
            color: AppColors.hitGray.withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColors.black.withOpacity(0.1),
              offset: const Offset(0, 9),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cardTitle.capitalizeFirst ?? '',
            style: textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600),
          ),
          VerticalSpacing(4.h),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: amount,
                  style: textTheme.headlineMedium!.copyWith(
                    color: colofulFigures,
                  ),
                ),
                TextSpan(
                  text: '/$perUnit',
                  style: textTheme.titleLarge!.copyWith(
                    color: AppColors.hitGray,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
