import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends StatelessWidget {
  ProfilView({Key? key}) : super(key: key);

  ProfilController controller = Get.put(ProfilController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => controller.logout(),
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      'Nama: ${controller.user['name']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Email: ${controller.user['email']}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
