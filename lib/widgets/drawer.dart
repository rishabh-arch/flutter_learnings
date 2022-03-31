import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.pngarts.com%2Ffiles%2F5%2FUser-Avatar-PNG-Transparent-Image.png&f=1&nofb=1";
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 4, 56, 80),
      // 673ab7
      child: ListView(
        // padding: EdgeInsets.zero,
        padding:
            const EdgeInsets.only(bottom: kFloatingActionButtonMargin + 48),

        children: <Widget>[
          const DrawerHeader(
            padding: EdgeInsets.zero,

            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
        color: Colors.transparent
      ),
              margin: EdgeInsets.zero,
              accountName: Text("Rishabh Garg"),
              accountEmail: Text("rishabhgargts@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  // contentPadding:const EdgeInsets.all(10),
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Home",
                        textScaleFactor: 1.3,
                        style: TextStyle(color: Colors.white),
                      ),
                      // shape: const RoundedRectangleBorder(
                      //     side: BorderSide(
                      //       color: Color.fromARGB(255, 255, 255, 255),
                      //       width: 1,
                      //     ),),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      //   shape: const  RoundedRectangleBorder(

                      // side:  BorderSide(
                      //   color: Color.fromARGB(255, 255, 255, 255),
                      //   width: 1,
                      // ),),
                      title: const Text(
                        "Profile",
                        textScaleFactor: 1.3,
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]),
            ),
          ),

          // ListTile(
          //   // contentPadding:const EdgeInsets.all(10),
          //   title:
          //       const Text('Item 1', style: TextStyle(color: Colors.white)),
          //   shape: RoundedRectangleBorder(
          //       side: const BorderSide(
          //         color: Colors.black,
          //         width: 1,
          //       ),
          //       borderRadius: BorderRadius.circular(5)),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),

          // ListTile(
          //   title:
          //       const Text('Item 2', style: TextStyle(color: Colors.white)),
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );
  }
}
