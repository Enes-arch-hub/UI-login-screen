import 'package:flutter/material.dart';
import 'package:login_screen/my_button.dart';
import 'package:login_screen/my_textfield.dart';
import 'package:login_screen/pages/images.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //text editing controllers
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  // sign user in method
  void signUserIn(){}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                const SizedBox(height: 50),
            
                //logo
               const Icon(Icons.lock, size: 100
                ), //
            
                const SizedBox(height: 50),
                //welcome back,you've been missed!
                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(color: Colors.black87,
                    fontSize: 16,
                  ), //
                ), //
            
                const SizedBox(height: 25),
                //username textfield
                MyTextfield(
                  controller:usernameController,
                  hintText: 'username',
                  obscureText: false,
                ),
            
                const SizedBox(height: 10),
            
                //password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: true,
                ),
            
                const SizedBox(height: 10),
            
            
                //forgot password?
            Padding(padding: const EdgeInsets.symmetric(horizontal:25.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.purple),
                  ),//
                  ],
                ),//
            ),//
                const SizedBox(height: 25),
            
            
                //sign in button
                MyButton(
                  onTap:signUserIn,
                ),
                const SizedBox(height: 50),
            
            
            
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0 ),
               child: Row(
                  children: [
                    Expanded(
                        child:Divider(
                  thickness: 0.5,
                  color: Colors.pink,
                ),//
                    ),//
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          'Or continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),//
                    Expanded(
                      child:Divider(
                        thickness: 0.5,
                        color: Colors.pink,
                      ),//
                    ),//
                ],
                ),//
                ),//
            
                //google + apple sign buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    Container(
                      width: 65,
                      height: 65,
                      child: Image.asset(google),
                    ),
                    const SizedBox(width: 5),
                    // apple button
                    Container(
                      width: 65,
                      height: 65,
                      child: Image.asset(apple),
                    )
                  ],
            
                ),//
            
                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',style: TextStyle(color: Colors.blue),),
                    const SizedBox(width: 4),
                    
                    const Text(
                        'Register now',
                            style:TextStyle(
                              color: Colors.red,fontWeight: FontWeight.bold
                            ),
                    ),
                    
                  ],
                )
                 ], //
            ),
          ), //
        ), //
      ), //
    ); //
  }
}