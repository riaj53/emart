// ignore: file_names
import 'package:emart/widget/my_button.dart';
import 'package:emart/widget/my_color.dart';
import 'package:emart/widget/my_text_fields.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Mycolor.bgcolor,
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 40,
                ),
                Image.asset(
                  'assets/images/signup.png',
                  height: size.height / 2.8,
                ),
                SizedBox(
                  height: size.height / 35,
                ),
             const    MyTextFields(
                  titel: 'Name',
                  icone: Icons.person,
                ),
                SizedBox(
                  height: size.height / 45,
                ),
              const   MyTextFields(
                  titel: 'Email',
                  icone: Icons.email,
                ),
                SizedBox(
                  height: size.height / 45,
                ),
              const   MyTextFields(
                  titel: 'Password',
                  icone: Icons.password,
                ),
                SizedBox(
                  height: size.height / 45,
                ),
              const  MyTextFields(
                  titel: 'Phone ',
                  icone: Icons.phone,
                ),
                SizedBox(
                  height: size.height / 45,
                ),
                Mybutton(
                    titel: 'SignUp',
                    color: Colors.white,
                    textColor: Colors.black,
                    onp: () {}),
                SizedBox(
                  height: size.height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'If you already signUp back to ',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login page',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
