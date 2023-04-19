import "package:flutter/material.dart";
import "package:jpbify/screens/prscreen.dart";

import "Settings.dart";

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}
class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
            const DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountEmail: Text("saieaswarbonthu@gmail.com"),
              accountName: Text("BONTHU SAI EASWAR"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/undraw_Profile_pic_re_iwgo.png"),
              ),
            ),
          ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              iconColor: Colors.white,
              title: const Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return const Profile();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Notification",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return const Profile();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Settings",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return const SettingsScreen();
                }));
              },
            ),
            const ListTile(
              leading: Icon(Icons.dashboard),
              iconColor: Colors.white,
              title: Text(
                "About Us",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // onTap: (){
              //   Navigator.push(context, MaterialPageRoute(builder:(context){
              //     return S;
              //   }));
              // },
            ),

        ],
        ),
      ),
    );
  }
}
