import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopping_app_with_getx/features/authentication/screens/login/login_screen.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();

  RxInt currentIndex = 0.obs;

  // update current indext when page scroll
  void updatePageIndicator (index){
    currentIndex.value= index;
  }

  // jump to spefic dot selected page
  void dotNavigationClick (index){
    currentIndex.value= index;
    pageController.jumpToPage(index);
  }

  // next page
  void nextPage (){

    currentIndex.value < 2
        ? currentIndex.value++
        : Get.offAll(LoginScreen());
    pageController.jumpToPage(currentIndex.value);
  }
  //  jump to the last page
  void skipPage(){
    currentIndex.value =2;
    pageController.jumpToPage(currentIndex.value);
  }
}