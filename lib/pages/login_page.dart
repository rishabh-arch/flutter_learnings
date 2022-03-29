import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  // const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
              height: 330,
            ),
            SizedBox(
              height: 50,
              child: Text(
                // 'We will Welcome $name You After',
                "Hi $name Welcome to Hell",
                style: TextStyle(fontSize: 30),
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
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autocorrect: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
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

                        InkWell(
                          onTap: () async {
                            setState(() {
                            changeButton = true;
                            });
                            await Future.delayed(const Duration(milliseconds: 200));
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: changeButton?50:150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton?const Icon(Icons.done,color: Colors.white,):const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(changeButton?50:8)
                                ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
    // );
  }
}
