import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrScreen extends StatelessWidget {
  const PrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        actions: [

          InkWell(
            onTap: (){

            },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.report_gmailerrorred_outlined),
                  const SizedBox(
                    height: 20/2,
                  ),
                  Text("Report",style: Theme.of(context).textTheme.titleSmall,),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20*2),
                  bottomRight: Radius.circular(20*2),
                )
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 50.0,
                  minRadius: 50.0,
                  backgroundColor: Colors.lightBlue,
                ),
                const SizedBox(
                  height: 20/2,
                ),
                Column(
                  children: [
                    Text("Chetan Sharma",style: Theme.of(context).textTheme.subtitle1,),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}