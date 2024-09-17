import 'package:flutter/material.dart';

class DaysWeather extends StatefulWidget {
  const DaysWeather({super.key});

  @override
  State<DaysWeather> createState() => _DaysweatherState();
}

class _DaysweatherState extends State<DaysWeather> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return item();
        },
      ),
    );
  }

  Widget item() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "day",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        Image.network(
          "https://openweathermap.org/img/wn/10d@2x.png",
          width: 120,
          height: 120,
        ),
        const Text(
          "27 C",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
