import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_sign_up_controller.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              TextField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: "Input Email",
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                onChanged: (value) {},
              ),
              //! 2. Buatlah textfield password
              QTextField(
                value: "123456",
                label: "Password",
                hint: "Your password",
                obscure: true,
                onChanged: (value) {},
              ),
              //! 3. Buatlah textfield confirm password
              QTextField(
                value: "123456",
                label: "Confirm Password",
                hint: "Confirm Your password",
                obscure: true,
                onChanged: (value) {},
              ),
              //! 4. Buat sebuah tombol,
              ElevatedButton.icon(
                onPressed: () {
                  controller.doLogin();
                },
                icon: Icon(Icons.login),
                label: Text("Login"),
              )
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
