import 'package:flutter/material.dart';
import 'package:untitled2/components/login_button.dart';
import 'package:untitled2/components/login_text_field.dart';
import 'package:untitled2/components/social_login_button.dart';
import 'package:untitled2/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Add your details to login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Your Email",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Password",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: LoginButton(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    label: "Login",
                  ),
                ),
                Text("Forget Your Password ?"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "or Login With",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SocialLoginButton(
                  label: "Login with Facebook",
                  icon: Icons.facebook,
                  color: Colors.blue[900],
                ),
                SocialLoginButton(
                  label: " Login with Gmail",
                  icon: Icons.whatshot,
                  color: Colors.red[500],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ?",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " Sign Up",
                        style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
