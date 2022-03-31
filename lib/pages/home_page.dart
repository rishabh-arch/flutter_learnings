import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final int days = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Khamakha'),
        centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 51, 45, 128),
      ),
      body: Center(
        // child: Text('Hello World!',
        //   style: Theme.of(context).textTheme.headline4,
        // ),
        child:ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('Login'),
        ),
        
        // child: RaisedButton(
        //   child: Text('Go to Login Page'),
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/login');
        //   },
        // ),
      ),
      drawer: MyDrawer(),
    );
  }
}
