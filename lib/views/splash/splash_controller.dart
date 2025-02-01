import 'package:get/get.dart';
import 'package:pelican/routes/route_name.dart';

class splashController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // Delay selama 3 detik sebelum berpindah ke halaman lain
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(routeName.onBoarding);  // Ganti dengan rute halaman utama
    });

  }
}   