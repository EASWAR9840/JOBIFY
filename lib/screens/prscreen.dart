import 'package:flutter/material.dart';

import 'drawer.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";

  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("My Profile"),
          actions: [

            InkWell(
              onTap: (){

              },
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: SingleChildScrollView(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.report_gmailerrorred_outlined),
                      const SizedBox(
                        height: 20/2,
                      ),
                      Text("Report",style: Theme.of(context).textTheme.titleSmall,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
              children: [
                //for circle avtar image
                _getHeader(),
                const SizedBox(
                  height: 10,
                ),
                _profileName("BONTHU SAI EASWAR"),
                const SizedBox(
                  height: 14,
                ),
                _heading("Personal Details"),
                const SizedBox(
                  height: 6,
                ),
                _detailsCard(),
                const SizedBox(
                  height: 10,
                ),
                _heading("Settings"),
                const SizedBox(
                  height: 6,
                ),
                _settingsCard(),

              ],
            )),
      ),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.circle,
              // color: Colors.orange[100],
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.email),
              title: Text("saieaswarbonthu@gmail.com"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("6305349235"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Enter location"),
            )
          ],
        ),
      ),
    );
  }

  Widget _settingsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.topic),
              title: Text("Change Theme"),
            )
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
              ],
            ),
          )),
    );
  }
}

