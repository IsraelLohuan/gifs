import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:gifs/home/home_page.dart';
import 'package:gifs/home/home_page_bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            binding: HomePageBindings()
        )
      ],
    );
  }
}
