import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/components/dialogs/wait_dialog.dart';
import 'package:m_ahmad_task/app/core/constants/app_assets.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/constants/hive_keys.dart';
import 'package:m_ahmad_task/app/core/services/hive_service.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';
import 'package:m_ahmad_task/app/routes/app_pages.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/home_controller.dart';

class ChartData {
  final String x; // or DateTime if you're plotting time
  final double y;

  ChartData(this.x, this.y);
}

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final List<ChartData> chartData = [
    ChartData('Sun', 40),
    ChartData('Mon', 65),
    ChartData('Tue', 45),
    ChartData('Wed', 70),
    ChartData('Thu', 85),
    ChartData('Fri', 75),
    ChartData('Sat', 75),
  ];
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            log(Get.find<MainBox>().getData<String>(HiveKeys.token).toString());
            controller.getHomeData();
          },
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColors.catskillWhite.withOpacity(0.4),
          title: SvgPicture.asset(
            AppIcons.nutriLogoVector,
            width: 124.w,
            height: 36.h,
          ),
          actions: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0.0001,
              onPressed: () {
                WaitDialog().callBasicLoaderDialog(
                    context: context,
                    loaderText: 'Logging out...',
                    isDialogDismissible: false);
                Future.delayed(const Duration(seconds: 1), () {
                  Get.find<MainBox>()
                      .addData<String>(HiveKeys.token, '')
                      .then((_) {
                    Get.offAllNamed(Routes.LOGIN);
                  });
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 22.w,
                height: 22.h,
                child: SvgPicture.asset(
                  AppIcons.logoutIcon,
                ),
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0.0001,
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 22.w,
                height: 22.h,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AppIcons.chatIcon,
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        color: AppColors.catskillWhite,
                        padding: EdgeInsets.all(0.5.sp),
                        child: CircleAvatar(
                          backgroundColor: AppColors.flamingo,
                          radius: 3.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0.0001,
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 22.w,
                height: 22.h,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AppIcons.bellIcon,
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        color: AppColors.catskillWhite,
                        padding: EdgeInsets.all(0.5.sp),
                        child: const CircleAvatar(
                          backgroundColor: AppColors.flamingo,
                          radius: 3.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Container(
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
                  VerticalSpacing(12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      'Daily Target',
                      style: textTheme.titleLarge,
                    ),
                  ),
                  VerticalSpacing(8.h),
                  CarouselSlider.builder(
                    carouselController: controller.carouselController,
                    itemCount: 3,
                    options: CarouselOptions(
                      viewportFraction: 0.9,
                      height: 410,
                      initialPage: controller.initalCarouselIndex,
                      onPageChanged: (index, reason) {
                        controller.currentCarouselIndex.value = index;
                      },
                    ),
                    itemBuilder: (context, index, pageViewIndex) {
                      return Container(
                        padding: EdgeInsets.all(16.sp),
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        width: 327.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          border: Border.all(
                              color: AppColors.slateGray.withOpacity(0.25),
                              width: 1),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Digestion',
                                      style: textTheme.titleLarge!.copyWith(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    VerticalSpacing(2.h),
                                    Text(
                                      'Weekly',
                                      style: textTheme.labelSmall!
                                          .copyWith(color: AppColors.hitGray),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      padding: EdgeInsets.zero,
                                      value: 'Weekly',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.green,
                                        size: 24,
                                      ),
                                      style: textTheme.bodySmall!.copyWith(
                                        color: AppColors.slateGray,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      items: <String>[
                                        'Daily',
                                        'Weekly',
                                        'Monthly',
                                        'Yearly'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width:
                                  double.infinity, // Use full width of parent
                              height: 327.h, // Adjust based on your needs
                              child: SfCartesianChart(
                                margin: EdgeInsets.zero,
                                plotAreaBorderWidth: 0,
                                primaryXAxis: CategoryAxis(
                                  axisLine: AxisLine(
                                      width: 0), // Remove axis line if needed
                                  majorTickLines: MajorTickLines(size: 0),
                                  majorGridLines: MajorGridLines(width: 0),
                                ),
                                primaryYAxis: NumericAxis(
                                  minimum: 0,
                                  maximum: 100,
                                  interval: 25,
                                  axisLine: AxisLine(
                                      width: 0), // Remove axis line if needed
                                  majorTickLines: MajorTickLines(size: 0),
                                  majorGridLines: MajorGridLines(
                                    width: 1,
                                    color: AppColors.cornFlorwerBlue
                                        .withOpacity(0.25),
                                    dashArray: <double>[
                                      2,
                                      3
                                    ], // Creates dotted lines
                                  ),
                                  axisLabelFormatter:
                                      (AxisLabelRenderDetails details) {
                                    String emoji = '';
                                    num value = details.value;

                                    if (value >= 100) {
                                      emoji = '😍'; // Very happy (100+)
                                    } else if (value >= 70) {
                                      emoji = '😊'; // Happy (70-99)
                                    } else if (value >= 50) {
                                      emoji = '🥱'; // Neutral (50-69)
                                    } else if (value >= 25) {
                                      // Changed from > to >=
                                      emoji = '😔'; // Sad (25-49)
                                    } else {
                                      emoji = '😡'; // Very sad (0-24)
                                    }

                                    return ChartAxisLabel(
                                        emoji,
                                        details.textStyle
                                            .copyWith(fontSize: 16));
                                  },
                                ),
                                title: ChartTitle(text: 'Weekly Sales'),
                                tooltipBehavior: TooltipBehavior(enable: true),
                                series: <CartesianSeries>[
                                  SplineAreaSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    borderWidth: 0, // No border for this series
                                    onCreateShader: (ShaderDetails details) {
                                      return LinearGradient(
                                        colors: [
                                          AppColors.brightTurquoise.withOpacity(
                                              0.8), // Top color (more opaque)
                                          AppColors.brightTurquoise.withOpacity(
                                              0.07), // Bottom color (more transparent)
                                          AppColors.brightTurquoise.withOpacity(
                                              0.0001), // Bottom color (more transparent)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ).createShader(details.rect);
                                    },
                                  ),

                                  // Second series: Solid line on top (no fill)
                                  SplineSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    color: AppColors
                                        .robinsEggBlue, // Solid line color
                                    width: 2, // Line width
                                    markerSettings:
                                        MarkerSettings(isVisible: false),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  VerticalSpacing(12.h),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        final isActive =
                            controller.currentCarouselIndex.value == index;
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInSine,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: isActive ? 20 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppColors.primary
                                : AppColors.catskillWhite,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        );
                      }),
                    ),
                  ),
                  VerticalSpacing(28.h),
                  Stack(
                    children: [
                      SvgPicture.asset(AppIcons.banner),
                      Positioned(
                        // top: 0.h,
                        right: 8.w,
                        child: Image.asset(
                          AppImages.appleCartoon,
                          width: 65.w,
                          height: 48.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
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
                          index: index,
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
        ));
  }
}

class RecommendationsCardWidget extends StatelessWidget {
  RecommendationsCardWidget({
    super.key,
    required this.index,
  });

  final int index;

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
            child: Image.asset(
              AppImages.burrito,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Increase Protein',
                      style: textTheme.titleSmall!.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '28 Days | Daily',
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
            cardTitle,
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
