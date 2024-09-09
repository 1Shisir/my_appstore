import 'package:get/get.dart';
import 'package:my_appstore/services/api_service.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchApps();
  }

  Future<List<dynamic>> fetchApps() async {
    try {
      var appsList = await APIService().fetchData();
      return appsList;
    } catch (e) {
      Get.snackbar('Error', 'Error fetching data: $e');
      return <dynamic>[];
    }
  }
}
