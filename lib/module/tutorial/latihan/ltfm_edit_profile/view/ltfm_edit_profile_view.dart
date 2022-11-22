import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: [
          //! 4. Tambahkan tombol Save
          ElevatedButton.icon(
              onPressed: () {
                controller.save();
              }, icon: Icon(Icons.save), label: Text("Save")),
          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          SizedBox(height: 10,)
          //! 6. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [ 
                      QTextField(label: "Email",
                          value: "admin@gmail.com",
                          hint: "Your email",
                          onChanged: (value) {}),
                      QTextField(label: "Password",
                          value: "123456",
                          obscure: true,
                          hint: "Your Password",
                          onChanged: (value) {}),
                    ],
                  ),
                ),
              )
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield email
              //? textfield password
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
