import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/widgets/dashboardScreenWidgets/home.dart';
import 'package:myapp/widgets/dashboardScreenWidgets/login.dart';
import 'package:myapp/widgets/dashboardScreenWidgets/registartion.dart';




class  Auth extends StatefulWidget {
  const  Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context , snapshots){
        if(snapshots.hasData){
          return Home();
        }
        else{
          return Login();
        }
      
      },
      ),
    );
  }
}