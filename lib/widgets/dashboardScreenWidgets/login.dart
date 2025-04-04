import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  final email=TextEditingController();
  final password=TextEditingController();

  Future singin()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text.trim(),
       password: password.text.trim());

  }
  
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
        
                // Logo
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.lock,
                size: 80
                ),
            
                SizedBox(height: 70),
            
                Text("Welcome Back , Your Missing",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
            
                SizedBox(height: 90),
            
            
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  SizedBox(height: 20),
            
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      hintText: "Enter the gmail",
                      
                    ),
                  ),
                ),
            
                SizedBox(height: 20),
            
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                     child: TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        
                          
                        ),
                      
                        hintText: "Passwaord",
                        
                      ),
                                     ),
                   ),
            
                   SizedBox(height: 130),
               
            
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                     child: GestureDetector(
                      onTap: singin,
                         child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color:Colors.black,
                            borderRadius: BorderRadius.circular(12),
                            
                          ),
                          child: Text("Log In",
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),),
                         ),
                       ),
                     ),
                   
                    
                
                  
                ],
              ),
            
                
            
            
            
                
              ],
            ),
          ),
        ),
      );
  }
}