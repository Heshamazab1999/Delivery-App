import 'package:flutter/material.dart';
import 'package:untitled2/components/login_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled2/screens/create_password.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "We have sent OTP to your Mobile",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: 300,
                height: 80,
                child: Text(
                  "please check your mobile number 012*****12 continue to reset your password",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                // controller: controller,
                length: 4,
                obscureText: false,
                hintCharacter: "*",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    inactiveFillColor: Colors.grey[200],
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    activeColor: Colors.white,
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.grey[200],
                    inactiveColor: Colors.white,
                    selectedColor: Colors.white,
                    disabledColor: Colors.white,
                    selectedFillColor: Colors.white),
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
                //   errorAnimationController: errorController,
                //controller: textEditingController,
                onCompleted: (v) {
                  // _controller.label.value = v;
                },
                onChanged: (value) {
                  // _controller.label.value = value;
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: LoginButton(
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewPasswordScreen()));
                },
                label: "Next",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Receive ?",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Click Here",
                    style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
