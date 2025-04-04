import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/widgets/dashboardScreenWidgets/login.dart';


void main() async{

   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  
    

  runApp(MyWidget());
}




class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}





class _MyWidgetState extends State<MyWidget> {
  @override


   final email=TextEditingController();
   final Passwaord= TextEditingController();



  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Auth(),
      ),
    );
  
  }

       
}