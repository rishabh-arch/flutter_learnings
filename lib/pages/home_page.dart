import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    // final int days = 0;
 
    return Scaffold(
      appBar: AppBar(
        title:const Text('Khamakha'),
        // centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 51, 45, 128),
      ),
      body: Center(
        // child: Text('Hello World!',
        //   style: Theme.of(context).textTheme.headline4,
        // ),
        child: RaisedButton(
          child: Text('Go to Login Page'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
      ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text('Drawer Header'),
              //change font color
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 32, 58),
                
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      
      
    );
  }
}