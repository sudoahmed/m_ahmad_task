import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';

class CategoriesCardWidget extends StatelessWidget {
  const CategoriesCardWidget({
    super.key,
    required this.name,
    required this.description,
    required this.image,
    required this.color,
  });

  final String name, description, image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsetsGeometry.all(12.sp),
      margin: EdgeInsets.all(8.sp),
      width: 160.w,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: AppColors.black.withOpacity(0.1),
              offset: const Offset(0, 9),
            )
          ],
          border: Border.all(
            color: AppColors.hitGray.withOpacity(0.25),
          )),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.sp),
            width: 94.w,
            height: 94.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
            ),
          ),
          VerticalSpacing(8.h),
          Text(
            name,
            style: textTheme.titleSmall!
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          Text(
            textAlign: TextAlign.center,
            description,
            style: textTheme.labelSmall!
                .copyWith(fontSize: 11.sp, color: AppColors.hitGray),
          )
        ],
      ),
    );
  }
}

