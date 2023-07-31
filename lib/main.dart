// ignore_for_file: unused_import, must_be_immutable, avoid_print
import 'package:flutter/material.dart';
import '../connection_to_api/api_connection.dart';
import '../model/model.dart';
import '../screen/screen.dart';
import '../widgets/progress_indicator.dart';
import '../constant/constants.dart';

Model? instanse;
void main() async {
  instanse = await getData();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  Future<dynamic> model = getData();
  WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kbackGroundColor,
        body: SafeArea(
          // ویجت ها وارد استاتوس بار نشوند
          child: Directionality(
            // کل ویجت ها در برنامه از چپ به راست قرار بگیرند
            textDirection: TextDirection.ltr,
            child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Screen(
                    instanse: instanse,
                  );
                } else if (snapshot.hasError) {
                  return Container();
                } else {
                  return const ProgressIndicatorWidget();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
