import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jpbify/screens/prscreen.dart';

import 'create.dart';
import 'forgot.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword({required String email,required String password,required BuildContext context }) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    }on FirebaseAuthException catch(e){
      if(e.code == "user-not-found"){
        print("No User found for that email");
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {

    TextEditingController _emailController =TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Jobify",style: TextStyle(
                color: Colors.black87,fontSize: 28.0,fontWeight:FontWeight.bold,
              ),),
              const Text("Login to proflie", style: TextStyle(color: Colors.black),),
              const SizedBox(
                height: 44.0,
              ),

              TextField(
                cursorHeight: 30,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    hintText: "User Email",
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                ),
              ),
              const SizedBox(
                height: 44.0,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration:const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock,color: Colors.black,)
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                children:  [
                  GestureDetector(
                    child: Text("forgot password",style: TextStyle(color: Colors.blue),),
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> forgotScreeen()));
                    },
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  GestureDetector(
                      child: Text("create a account",style: TextStyle(color: Colors.blue),),
                      onTap:(){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> CreateAccount()));
                      }
                  ),
                ],
              ),
              const SizedBox(
                height: 88.0,
              ),
              SizedBox(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: const Color(0xFF0069FE),
                  onPressed: () async {
                    User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                      print(user);

                    if(user!= null){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Profile()));
                    }
                  },
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: const Text("Login",style: TextStyle(color: Colors.white, fontSize: 18,
                  )),
                ),
              ),
            ],
          ),
      ),
    );
  }
}