import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_moslem/ui/pages/pages.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  initializeDateFormatting("id");
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
