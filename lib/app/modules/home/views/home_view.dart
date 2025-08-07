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
import 'package:m_ahmad_task/app/data/models/charts/chart_helper_model.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/category_card_widget.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/daily_target_widget.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/recommendations_card_widget.dart';
import 'package:m_ahmad_task/app/modules/home/widgets/skeletons/skeleton_home.dart';
import 'package:m_ahmad_task/app/routes/app_pages.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controllers/home_controller.dart';

class ChartData {
  final String x; // or DateTime if you're plotting time
  final double y;

  ChartData(this.x, this.y);
}

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        scrolledUnderElevation: 0,
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
                  Get.find<MainBox>().addData<String>(HiveKeys.tempToken, '');

                  return Get.offAllNamed(Routes.LOGIN);
                });
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
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
              margin: const EdgeInsets.symmetric(horizontal: 10),
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
          CupertinoButton(
            padding: EdgeInsets.zero,
            minSize: 0.0001,
            onPressed: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
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
      body: Obx(
        () => controller.isLoading.value
            ? const SkeletonHome()
            : Container(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daily Target',
                                style: textTheme.titleLarge,
                              ),
                              VerticalSpacing(8.h),
                              GridView.builder(
                                  itemCount: controller.dailyTargets.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 16 / 9,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return DailyTargetCards(
                                      cardTitle:
                                          controller.dailyTargets[index].name,
                                      amount: controller
                                          .dailyTargets[index].achievedTarget
                                          .toString(),
                                      colofulFigures: [
                                        AppColors.corn,
                                        AppColors.flamingo,
                                        AppColors.christi,
                                        AppColors.blueRibbon,
                                      ][index % 4],
                                      perUnit: controller
                                          .dailyTargets[index].totalTarget
                                          .toString(),
                                    );
                                  }),
                            ],
                          ),
                        ),
                        VerticalSpacing(12.h),
                        Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text(
                            'Today',
                            style: textTheme.titleLarge,
                          ),
                        ),
                        VerticalSpacing(8.h),
                        CarouselSlider.builder(
                          carouselController: controller.carouselController,
                          itemCount: 3,
                          options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 0.9,
                            height: 410,
                            initialPage: controller.initialCarouselIndex.value,
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
                                    color:
                                        AppColors.slateGray.withOpacity(0.25),
                                    width: 1),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Digestion',
                                            style:
                                                textTheme.titleLarge!.copyWith(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          VerticalSpacing(2.h),
                                          Text(
                                            'Weekly',
                                            style: textTheme.labelSmall!
                                                .copyWith(
                                                    color: AppColors.hitGray),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            padding: EdgeInsets.zero,
                                            value: 'Weekly',
                                            icon: const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.green,
                                              size: 24,
                                            ),
                                            style:
                                                textTheme.bodySmall!.copyWith(
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
                                    width: double
                                        .infinity, // Use full width of parent
                                    height: 327.h, // Adjust based on your needs
                                    child: SfCartesianChart(
                                      margin: EdgeInsets.zero,
                                      plotAreaBorderWidth: 0,
                                      primaryXAxis: const CategoryAxis(
                                        axisLine: AxisLine(
                                            width:
                                                0), // Remove axis line if needed
                                        majorTickLines: MajorTickLines(size: 0),
                                        majorGridLines:
                                            MajorGridLines(width: 0),
                                      ),
                                      primaryYAxis: NumericAxis(
                                        minimum: 0,
                                        maximum: 5,
                                        interval: 1,
                                        axisLine: const AxisLine(
                                            width:
                                                0), // Remove axis line if needed
                                        majorTickLines:
                                            const MajorTickLines(size: 0),
                                        majorGridLines: MajorGridLines(
                                          width: 1,
                                          color: AppColors.cornFlorwerBlue
                                              .withOpacity(0.25),
                                          dashArray: const <double>[
                                            2,
                                            3
                                          ], // Creates dotted lines
                                        ),
                                        axisLabelFormatter:
                                            (AxisLabelRenderDetails details) {
                                          String emoji = '';
                                          num value = details.value;

                                          if (value >= 5) {
                                            emoji = '😍';
                                          } else if (value >= 4) {
                                            emoji = '😊';
                                          } else if (value >= 3) {
                                            emoji = '🥱';
                                          } else if (value >= 2) {
                                            emoji = '😔';
                                          } else if (value >= 1) {
                                            emoji = '😡';
                                          }

                                          return ChartAxisLabel(
                                              emoji,
                                              details.textStyle
                                                  .copyWith(fontSize: 16));
                                        },
                                      ),
                                      title:
                                          const ChartTitle(text: 'Weekly Mood'),
                                      tooltipBehavior:
                                          TooltipBehavior(enable: true),
                                      series: <CartesianSeries>[
                                        SplineAreaSeries<DayValue, String>(
                                          dataSource: controller.chartData,
                                          xValueMapper: (DayValue data, _) =>
                                              data.day,
                                          yValueMapper: (DayValue data, _) =>
                                              data.value,
                                          borderWidth:
                                              0, // No border for this series
                                          onCreateShader:
                                              (ShaderDetails details) {
                                            return LinearGradient(
                                              colors: [
                                                AppColors.brightTurquoise
                                                    .withOpacity(
                                                        0.8), // Top color (more opaque)
                                                AppColors.brightTurquoise
                                                    .withOpacity(
                                                        0.07), // Bottom color (more transparent)
                                                AppColors.brightTurquoise
                                                    .withOpacity(
                                                        0.0001), // Bottom color (more transparent)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ).createShader(details.rect);
                                          },
                                        ),

                                        // Second series: Solid line on top (no fill)
                                        SplineSeries<DayValue, String>(
                                          dataSource: controller.chartData,
                                          xValueMapper: (DayValue data, _) =>
                                              data.day,
                                          yValueMapper: (DayValue data, _) =>
                                              data.value,
                                          color: AppColors
                                              .robinsEggBlue, // Solid line color
                                          width: 2, // Line width
                                          markerSettings: const MarkerSettings(
                                              isVisible: false),
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
                                  controller.currentCarouselIndex.value ==
                                      index;
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInSine,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
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
                              right: 15.w,
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
                            itemCount: controller.recommendations.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return RecommendationsCardWidget(
                                index: index,
                                heading:
                                    controller.recommendations[index].heading,
                                image: controller.recommendations[index].image,
                                plan:
                                    controller.recommendations[index].dietPlan,
                                duration: controller
                                    .recommendations[index].durationInDays,
                              );
                            },
                          ),
                        ),
                        VerticalSpacing(8.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discover',
                                style: textTheme.titleLarge,
                              ),
                              GridView.builder(
                                  itemCount: controller.category.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 0.79,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, index) {
                                    return CategoriesCardWidget(
                                      name: controller.category[index].name,
                                      description: controller
                                          .category[index].description,
                                      image: controller.category[index].image,
                                      color: [
                                        AppColors.fern.withOpacity(0.4),
                                        AppColors.corn.withOpacity(0.4),
                                        AppColors.flamingo.withOpacity(0.4),
                                        AppColors.red.withOpacity(0.4),
                                      ][index % 4],
                                    );
                                  }),
                              VerticalSpacing(32.h),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
