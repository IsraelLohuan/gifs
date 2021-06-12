import 'package:get/get.dart';
import 'package:gifs/home/home_page_controller.dart';
import 'package:gifs/repository/giphy_repository.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiphyRepository());
    Get.lazyPut(() => HomePageController(Get.find()));
  }
}