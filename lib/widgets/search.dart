import 'package:flutter/material.dart';
import 'package:weather_app/constant/colors.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  late final _SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: SizedBox(
            height: 50,
            child: TextField(
              controller: _SearchController,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ))),
              onSubmitted: (value) {},
            ),
          )),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "search",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
