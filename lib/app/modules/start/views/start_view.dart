import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:presensi/app/routes/app_pages.dart';

import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Presensi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text("Selamat Datang di Aplikasi Presensi"),
            const Text("Masuk atau daftar jika kamu belum memiliki akun"),
            const SizedBox(height: 15),
            SizedBox(
                width: 280,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.SIGNIN);
                    },
                    child: Text("MASUK"))),
            const SizedBox(height: 15),
            SizedBox(
                width: 280,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.SIGNUP);
                    },
                    child: Text("DAFTAR"))),
          ],
        ),
      ),
    );
  }
}
