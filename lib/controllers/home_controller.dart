import 'package:get/get.dart';
import 'package:weather_app/models/data.dart';
import 'package:weather_app/service/call_services.dart';

class HomeController extends GetxController {
  DataApi? myData;
  var loadData = false.obs;

  getHomes() async {
    loadData.value = true;
    var response = await HomeService().getHomes();
    if (response.statusCode == 200) {
      myData = dataApiFromJson(response.body);
    }
    loadData.value = false;
  }
}
