import 'package:flutter/material.dart';
import 'package:weather_app/models/data.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({super.key, this.data});
  final DataApi? data;
  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.data!.city.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
        ),
        Image.network(
          "https://openweathermap.org/img/wn/${widget.data!.list[0].weather[0].icon}@2x.png",
          width: 120,
          height: 120,
        ),
        Text(
          "${widget.data!.list[0].main.temp} C",
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lat: ${widget.data!.city.coord.lat}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "lon : ${widget.data!.city.coord.lon}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ],
    );
  }
}
