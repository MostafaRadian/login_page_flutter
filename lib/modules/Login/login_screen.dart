// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LogInScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isHidden = false;
  LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        leading: const Icon(Icons.menu),
        title: const Text(
          "Sign in",
          style: TextStyle(fontSize: 20),
        ),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://cdn3.iconfinder.com/data/icons/login-6/512/LOGIN-10-512.png'),
                    width: 180,
                    height: 180,
                  ),
                  const Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent),
                  ),
                  const SizedBox(height: 20),
                  // ignore: sized_box_for_whitespace
                  DefaultFormField(
                    emailController,
                    TextInputType.emailAddress,
                    (value) {
                      if (value!.isEmpty) {
                        return "Email adress must not be empty";
                      }
                      return null;
                    },
                    "E-mail",
                    Colors.indigoAccent,
                    const Icon(Icons.email),
                  ),
                  const SizedBox(height: 20),
                  // ignore: sized_box_for_whitespace
                  DefaultFormField(
                      passController, TextInputType.visiblePassword, (value) {
                    if (value!.isEmpty) {
                      return "Password adress must not be empty";
                    }
                    return null;
                  }, "Password", Colors.indigoAccent, const Icon(Icons.lock),
                      hidden: isHidden,
                      suffixIcon: Icons.remove_red_eye,
                      function: () {}),

                  const SizedBox(height: 30),
                  // ignore: sized_box_for_whitespace
                  DefaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passController.text);
                        }
                      },
                      color: Colors.indigoAccent,
                      width: 250),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Register Now",
                              style: TextStyle(
                                  color: Colors.indigoAccent, fontSize: 15),
                              textAlign: TextAlign.center))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
