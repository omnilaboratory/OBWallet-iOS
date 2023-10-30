import 'package:awallet/welcome.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// https://book.flutterchina.club/chapter3/input_and_form.html#_3-5-1-textfield

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Center(child: Text("Sign Up Page")),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
              );
            },
          ),
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Step 1",
                        style: TextStyle(fontSize: 30),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: _unameController,
                        decoration: const InputDecoration(
                            labelText: "username",
                            hintText: "username",
                            prefixIcon: Icon(Icons.person)),
                        // 校验用户名
                        validator: (v) {
                          return v!.trim().isNotEmpty ? null : "Wrong username";
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _pswController,
                        decoration: const InputDecoration(
                            labelText: "password",
                            hintText: "password",
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "confirm password",
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ElevatedButton(
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text("Next"),
                                ),
                                onPressed: () {
                                  if ((_formKey.currentState as FormState)
                                      .validate()) {
                                    if (kDebugMode) {
                                      print(_unameController.value.text);
                                    }
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
