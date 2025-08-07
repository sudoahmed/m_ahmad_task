import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_ahmad_task/app/core/constants/app_assets.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';
import 'package:m_ahmad_task/app/modules/home/views/home_view.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/daily_target_widget.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/recommendations_card_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonHome extends StatelessWidget {
 const  SkeletonHome({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Skeletonizer(
      child: Container(
        color: AppColors.catskillWhite.withOpacity(0.4),
        child: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                topRight: Radius.circular(16.r)),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Target',
                        style: textTheme.titleLarge,
                      ),
                      VerticalSpacing(8.h),
                      SizedBox(
                        width: 1.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DailyTargetCards(
                              cardTitle: 'Carbs',
                              amount: '23',
                              colofulFigures: AppColors.corn,
                              perUnit: '123g',
                            ),
                            DailyTargetCards(
                              cardTitle: 'Protien',
                              amount: '144',
                              colofulFigures: AppColors.flamingo,
                              perUnit: '100g',
                            ),
                          ],
                        ),
                      ),
                      VerticalSpacing(12.h),
                      SizedBox(
                        width: 1.sw,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DailyTargetCards(
                              cardTitle: 'Fat',
                              amount: '56',
                              colofulFigures: AppColors.christi,
                              perUnit: '74g',
                            ),
                            DailyTargetCards(
                              cardTitle: 'Calories',
                              amount: '1548',
                              colofulFigures: AppColors.blueRibbon,
                              perUnit: '2000',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                VerticalSpacing(8.h),
                Center(
                  child: Text('Say GoodBye to Ads, By Premium',
                      style: textTheme.labelSmall!
                          .copyWith(color: AppColors.hitGray)),
                ),
                VerticalSpacing(16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendation',
                        style: textTheme.titleLarge,
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        minSize: 0.0001,
                        onPressed: () {},
                        child: Text(
                          'View All',
                          style: textTheme.titleLarge!.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalSpacing(8.h),
                SizedBox(
                  height: 230.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return RecommendationsCardWidget(
                        heading: 'Increase protein',
                        index: index,
                        duration: 25,
                        image:
                            'https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=',
                        plan: 'Daily',
                      );
                    },
                  ),
                ),
                VerticalSpacing(8.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover',
                        style: textTheme.titleLarge,
                      ),
                      GridView.builder(
                          itemCount: 4,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 0.79, crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Skeleton.leaf(
                              child: Container(
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
                                      color:
                                          AppColors.hitGray.withOpacity(0.25),
                                    )),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15.sp),
                                      width: 94.w,
                                      height: 94.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            AppColors.christi.withOpacity(0.4),
                                      ),
                                      child: Image.asset(AppImages.recipe),
                                    ),
                                    VerticalSpacing(8.h),
                                    Text(
                                      'Recipe',
                                      style: textTheme.titleSmall!.copyWith(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      textAlign: TextAlign.center,
                                      'Cook, Eat, Log, Repeat',
                                      style: textTheme.labelSmall!.copyWith(
                                          fontSize: 11.sp,
                                          color: AppColors.hitGray),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                      VerticalSpacing(32.h),
                    ],
                  ),
                ),

                // Container(
                //   color: Colors.green,
                //   child: Obx(
                //     () =>
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
