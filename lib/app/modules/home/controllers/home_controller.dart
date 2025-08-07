import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:m_ahmad_task/app/data/models/charts/chart_helper_model.dart';
import 'package:m_ahmad_task/app/data/models/home/home_model.dart';
import 'package:m_ahmad_task/app/modules/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  RxInt currentCarouselIndex = RxInt(0);
  RxInt initialCarouselIndex = RxInt(0);
  RxBool isLoading = false.obs;

  RxList<DailyTarget> dailyTargets = <DailyTarget>[].obs;
  RxList<DayValue> chartData = <DayValue>[].obs;
  RxList<Recommendation> recommendations = <Recommendation>[].obs;
  RxList<CategoryModel> category = <CategoryModel>[].obs;

  Future<void> getHomeData() async {
    // try {
    isLoading.value = true;
    await Get.find<HomeRepository>().onGetHomeData(
      onSuccess: (homeData) {
        dailyTargets.value = homeData.dailyTargets;
        ChartMoodData chartMoodData = createChartMoodData(
            homeData.graphs.digestionChart.weeklyMood.days,
            homeData.graphs.digestionChart.weeklyMood.values);
        chartData.value = chartMoodData.moodData;
        recommendations.value = homeData.recommendations;
        category.value = homeData.categories;
        isLoading.value = false;
      },
      onError: () {
        isLoading.value = false;
      },
    );
    // } catch (e) {
    //   isLoading.value = false;

    //   log(e.toString());
    // }
  }

  @override
  void onInit() {
    super.onInit();
    getHomeData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
