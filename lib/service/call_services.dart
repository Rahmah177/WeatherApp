import 'package:http/http.dart' as http;
import 'package:weather_app/constant/api.dart';

class HomeService {
  var url = Uri.parse(OpenWeatherMapKeyAPI.apiUrl);
  getHomes() async {
    var client = http.Client();
    try {
      var response = await client.get(url);
      return response;
    } catch (e) {
      return http.Response('Error', 408);
    }
  }
}
