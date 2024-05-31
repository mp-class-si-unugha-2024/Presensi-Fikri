import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:presensi/app/routes/app_pages.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Card(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    "Presensi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "E-mail Wajib Diisi!";
                      }
                      if (!GetUtils.isEmail(value)) {
                        return "Masukkan E-mail dengan Benar!";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        labelText: "Email", border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Password", border: OutlineInputBorder()),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text("Show Password"),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Lupa Kata Sandi?"),
                      ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.HOME);
                            if (formKey.currentState!.validate()) {}
                          },
                          child: const Text("MASUK"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
