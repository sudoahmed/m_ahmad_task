import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m_ahmad_task/app/core/constants/app_assets.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecommendationsCardWidget extends StatelessWidget {
  const RecommendationsCardWidget({
    super.key,
    required this.index,
    required this.heading,
    required this.image,
    required this.plan,
    required this.duration,
  });

  final int index;

  final String heading, image, plan;
  final int duration;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 228.h,
      width: 314.w,
      margin: EdgeInsets.only(right: 12.w, left: index == 0 ? 24.w : 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.hitGray.withOpacity(0.25),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.06),
                blurRadius: 22,
                offset: Offset(8, 9))
          ]),
      child: Column(
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                topLeft: Radius.circular(16.r),
              )),
              width: 314.w,
              height: 158.h,
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: textTheme.titleSmall!.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '$duration Days | $plan',
                      style: textTheme.labelSmall!.copyWith(
                        color: AppColors.hitGray,
                      ),
                    ),
                  ],
                ),
                CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  minSize: 0.0001,
                  child: Skeleton.leaf(
                    enabled: true,
                    child: Container(
                      padding: EdgeInsets.all(8.sp),
                      width: 38.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary.withOpacity(0.52),
                      ),
                      child: SvgPicture.asset(AppIcons.bookmark),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
