import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
            height: 330,
          ),
          const SizedBox(
            height: 20,
            child: Text('Login Page'),
            
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
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
         child: Column(
            children: <Widget>[
              TextFormField(
                autocorrect: true,
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              SizedBox(height: 20), 

              ElevatedButton(onPressed:(){
                print('Login');
              }, child: Text('Login'),
             style: TextButton.styleFrom()
              ),
            ],
          )
          ), 
        ],
      ),
    );
    // );
  }
}
