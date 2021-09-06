import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.fitWidth,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  "assets/images/monkey.jpg",
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Meal ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Monkey',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "FOOD DELIVERY",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
