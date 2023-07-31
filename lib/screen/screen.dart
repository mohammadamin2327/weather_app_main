// ignore_for_file: unused_import, must_be_immutable, unrelated_type_equality_checks, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_main/main.dart';
import '../constant/constants.dart';
import '../model/model.dart';
import '../connection_to_api/api_connection.dart';
import '../widgets/divider.dart';
import '../widgets/smoothpageindicator.dart';
import '../widgets/weather_icon.dart';

dynamic instanse1;
class Screen extends StatelessWidget {
  dynamic instanse;
  Screen({super.key,required this.instanse});
  WeatherIcon weatherIcon = WeatherIcon();
  TextEditingController textEditingController = TextEditingController();
  int? statusCode = response!.statusCode;
  String? data;
  String? name = 'Tehran';
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      color: Color(0XFF2B2B2B),
                    ),
                    margin: const EdgeInsets.only(left: 12.0, top: 12.0),
                    child: TextField(
                      onSubmitted: (String? text) async {
                        name = text;
                        instanse1 = await getData(cityName: text);
                        setState(() {
                          instanse = instanse1;
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      cursorWidth: 2.0,
                      keyboardType: TextInputType.name,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        enabled: true,
                        disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0XFF2B2B2B),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          size: 30.0,
                        ),
                        prefixIconColor: Colors.grey,
                        labelText: 'Please Enter Your City Name',
                        labelStyle: headerText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(right: 12.0, top: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      color: kmyLocation,
                    ),
                    width: 50,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'My Location',
                          style: headerText,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.my_location_rounded,
                          size: 30.0,
                          color: iconColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.location_city,
                  size: 30.0,
                  color: iconColor,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                  Text(
                    name!.toUpperCase(),
                    style: headerText,
                  ),
              ],
            ),
            Builder(
              builder: (context) {
                String? image = instanse!.description;
                return Image.asset(
                  'weather_icons/${weatherIcon.weatherIcon(description: image)}',
                  width: 250,
                  height: 250,
                );
              }
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  statusCode == 200
                      ? instanse!.temp.toString()
                      : statusCode.toString(),
                  style: temp,
                ),
                Text(
                    statusCode == 200
                        ? instanse!.description.toString()
                        : statusCode.toString(),
                    style: description,
                  ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      color: kbottomContainerColor,
                    ),
                    margin: const EdgeInsets.all(12.0),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget> [
                                Text(
                                  statusCode == 200
                                      ? instanse!.feelsLike.toString()
                                      : statusCode.toString(),
                                  style: bottomVariableTextStyle1,
                                ),
                                Text('°',
                                  style: someSign,
                                ),
                              ],
                            ),
                            Text('Feels Like',
                              style: bottomVariableTextStyle,
                            ),
                          ],
                        ),
                        const VerticalDividerWidget(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  statusCode == 200
                                      ? instanse!.humidity.toString()
                                      : statusCode.toString(),
                                  style: bottomVariableTextStyle1,
                                ),
                                Text(
                                  ' %',
                                  style: someSign,
                                ),
                              ],
                            ),
                            Text(
                              'Humidity',
                              style: bottomVariableTextStyle,
                            ),
                          ],
                        ),
                        const VerticalDividerWidget(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  statusCode == 200
                                      ? instanse!.speed.toString()
                                      : statusCode.toString(),
                                  style: bottomVariableTextStyle1,
                                ),
                                Text(
                                  '‌‌‌‌ km/h',
                                  style: someSign,
                                ),
                              ],
                            ),
                            Text(
                              'Wind',
                              style: bottomVariableTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
