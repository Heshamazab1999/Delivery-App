import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class SocialLoginButton extends StatelessWidget {
  final String label;
  final Color? color;
  final ButtonType buttonType;

  SocialLoginButton(
      {this.label = '', this.color, this.buttonType = ButtonType.facebook});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: SizedBox(
        height: 50,
        width: 280,
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SignInButton.mini(
                buttonType: buttonType,
                onPressed: () {},
                btnColor: Colors.transparent,
                elevation: 0,
              ),
              Text(
                label,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}
