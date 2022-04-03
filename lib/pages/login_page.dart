import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(milliseconds: 200));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  // const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/login2.png',
              fit: BoxFit.cover,
              height: 330,
            ),
            SizedBox(
              height: 50,
              child: Text(
                // 'We will Welcome $name You After',
                "Hi Welcome to Hell",
                style: TextStyle(fontSize: 30,color: Theme.of(context).secondaryHeaderColor),
              ),
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (name) {
                          if (name!.isEmpty) {
                            return "Please Enter Username";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        child: Row(children: <Widget>[
                          // ElevatedButton(
                          //   onPressed: () {
                          //     print('Login');
                          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //   },
                          //   child: const Text(
                          //     'Login',
                          //     style: TextStyle(fontSize: 20),
                          //   ),
                          //   style: TextButton.styleFrom(
                          //       minimumSize: const Size(150, 50)),
                          // ),
                          // const SizedBox(width: 20),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     print('Sign Up');
                          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //   },
                          //   child: const Text(
                          //     'Sign Up',
                          //     style: TextStyle(fontSize: 20),
                          //   ),
                          //   style: TextButton.styleFrom(
                          //       minimumSize: const Size(150, 50)),

                          // ),

                          Material(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                            child: InkWell(
                              splashColor: Colors.deepPurpleAccent,
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                width: changeButton ? 50 : 150,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? const Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
    // );
  }
}
