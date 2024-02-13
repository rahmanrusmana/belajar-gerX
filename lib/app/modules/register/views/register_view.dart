import 'package:belajar_getx/app/helpers/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';
import 'package:belajar_getx/app/modules/register/controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "data:image/jpeg;base64,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"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8, // Increase the elevation for a shadow effect
                margin: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.black),
                ),
                color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          onChanged: controller.onNameChanged,
                          decoration: InputDecoration(
                            hintText: "Masukan Nama Lengkap",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Tolong Masukan Nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          onChanged: controller.onEmailChanged,
                          decoration: InputDecoration(
                            hintText: "Masukan Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            prefixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Tolong Masukan Email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          onChanged: controller.onPasswordChanged,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Masukan Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Tolong Masukan Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed("/login");
                          },
                          child: Text(
                            "Sudah punya akun? Login disini",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: displayHeight(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: Text("Register"),
                              onPressed: () {
                                if (controller.formKey.currentState!
                                    .validate()) {
                                  controller.register();
                                }
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
