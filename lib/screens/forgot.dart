
import 'package:flutter/material.dart';

class forgotScreeen extends StatefulWidget {
  const forgotScreeen({Key? key}) : super(key: key);

  @override
  State<forgotScreeen> createState() => _forgotScreeenState();
}

class _forgotScreeenState extends State<forgotScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const Text("Forgot Password",style: TextStyle(color: Colors.black87 ,fontWeight: FontWeight.bold,fontSize: 20.0),),
            const SizedBox(
              height: 44.0,
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email_outlined,color: Colors.black87)
              ),
            ),
            const SizedBox(
              height: 44.0,
            ),
            SizedBox(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: const Color(0xFF0069FE), onPressed: null,
                elevation: 0.0,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: const Text("reset"),
              ),
            )

        ],
      ),

      ),

    );
  }
}
