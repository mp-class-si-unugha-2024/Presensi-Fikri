import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (contex) => GetMaterialApp(
        title: "Application",
        initialRoute: Routes.START,
        getPages: AppPages.routes,
      ),
    ),
  );
}
