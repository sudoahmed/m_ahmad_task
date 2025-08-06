import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/constants/app_assets.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';
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
    ChartData('Mon', 30),
    ChartData('Tue', 42),
    ChartData('Wed', 28),
    ChartData('Thu', 35),
    ChartData('Fri', 40),
  ];
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
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
              onPressed: () {},
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
                        height: 300.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
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
                          duration: Duration(milliseconds: 300),
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
                  SfCartesianChart(
                    primaryXAxis: CategoryAxis(), // or DateTimeAxis()
                    primaryYAxis: NumericAxis(),
                    title: ChartTitle(text: 'Weekly Sales'),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <CartesianSeries>[
                      SplineSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        color: Colors.orange,
                        width: 2,
                        markerSettings: MarkerSettings(isVisible: true),
                      )
                    ],
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
