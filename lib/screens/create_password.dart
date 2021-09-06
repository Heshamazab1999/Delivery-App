import 'package:flutter/material.dart';
import 'package:untitled2/components/login_button.dart';
import 'package:untitled2/components/login_text_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "New Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 300,
              height: 80,
              child: Text(
                "please enter your email to receive a link to create a new password via email",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            TextFieldLogin(
              function: (V) {},
              hint: "New Password",
            ),TextFieldLogin(
              function: (V) {},
              hint: "Confirm Password",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: LoginButton(
                function: () {

                },
                label: "Next",
              ),
            )
          ],
        ),
      ),
    );
  }
}
