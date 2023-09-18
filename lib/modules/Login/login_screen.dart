// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LogInScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passController = TextEditingController();

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
            child: Column(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://cdn3.iconfinder.com/data/icons/login-6/512/LOGIN-10-512.png'),
                  width: 200,
                  height: 200,
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
                Container(
                  width: 300,
                  child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          prefixIconColor: Colors.indigoAccent)),
                ),
                const SizedBox(height: 20),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Colors.indigoAccent),
                  ),
                ),
                const SizedBox(height: 30),
                // ignore: sized_box_for_whitespace
                DefaultButton(
                  function: () {
                    print(emailController.text);
                    print(passController.text);
                  },
                ),
                const SizedBox(height: 10),

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
    );
  }
}
