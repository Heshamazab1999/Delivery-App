import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/components/login_button.dart';
import 'package:untitled2/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "assets/images/backgroundorange.jpg",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        right: MediaQuery.of(context).size.width / 2.7,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/images/monkey.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Meal",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        " Monkey",
                        style: TextStyle(fontSize: 30, color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Text(
                  "Food Delivery",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Discover the Best Foods from over 1,000 restaurants and fast delivery to your                           doorstep",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
                LoginButton(
                  label: "Login",
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Create an Account",
                        style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.deepOrange),
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
