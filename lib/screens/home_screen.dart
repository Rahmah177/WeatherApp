import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:weather_app/constant/colors.dart';
import 'package:weather_app/controllers/home_controller.dart';
import 'package:weather_app/widgets/DaysWeather.dart';
import 'package:weather_app/widgets/current.dart';
import 'package:weather_app/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.getHomes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.rainGradient,
          ),
        ),
        child: SafeArea(
          child: Obx(() => controller.loadData.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    const SearchBox(),
                    const SizedBox(
                      height: 20,
                    ),
                    CurrentWeather(data: controller.myData),
                    const Spacer(),
                    const DaysWeather(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
        ),
      ),
    );
  }
}
