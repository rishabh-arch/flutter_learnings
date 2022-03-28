import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    // final int days = 0;
 
    return Scaffold(
      appBar: AppBar(

        title:const Text('Khamakham'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Hello World!',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
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