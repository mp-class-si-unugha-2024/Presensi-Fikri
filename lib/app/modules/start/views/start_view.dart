import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(title: const Text('StartView'), centerTitle: true),

      // BODY
      // supaya bisa ke tengah, gunakan Center()
      body: Center(
        // Untuk menata widget dalam posisi atas bawah / bertikal gunakan Column()
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // judul
            const Text(
              "Presensi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            // ucapan selamat
            const Text("Selamat Datang di Aplikasi Presensi"),
            const Text("Masuk atau daftar jika kamu belum memiliki akun"),
            const SizedBox(height: 15),

            // TOMBOL MASUK
            SizedBox(
              width: 280,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.SIGNIN),
                child: const Text("MASUK"),
              ),
            ),
            const SizedBox(height: 15),

            // TOMBOL DAFTAR
            SizedBox(
              width: 280,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(Routes.SIGNUP),
                child: const Text("DAFTAR"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
