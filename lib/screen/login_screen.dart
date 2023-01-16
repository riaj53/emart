import 'package:emart/screen/signUp_Screen.dart';
import 'package:emart/widget/my_button.dart';
import 'package:emart/widget/my_color.dart';
import 'package:emart/widget/my_text_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Mycolor.bgcolor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
                // color: Colors.red,
                height: size.height / 2,
                width: size.width / 1,
                child: const Image(image: AssetImage('assets/images/l1.png'))),
            SizedBox(
              height: size.height / 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MyTextFields(
                titel: ' Email',
                icone: Icons.email,
              ),
            ),
            SizedBox(height: size.height / 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: MyTextFields(
                titel: ' Password',
                icone: Icons.password,
              ),
            ),
            SizedBox(height: size.height / 11),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Mybutton(
                titel: 'Login',
                color: Colors.white,
                textColor: Colors.black,
                onp: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '''Don't have an account ?''',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUp()));
                    },
                    child: Text(
                      'Create now',
                      style: TextStyle(color: Colors.deepPurple.shade100),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
