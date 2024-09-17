import 'package:weather_app/constant/api_key.dart';

class OpenWeatherMapKeyAPI {
  static String city = "london";
  static String apiUrl =
      "https://api.openweathermap.org/data/2.5/forecast?q=$city&appid=$ApiKey&units=metric";
}
