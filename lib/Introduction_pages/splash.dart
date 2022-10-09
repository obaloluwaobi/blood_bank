import 'dart:async';
import 'package:blood_bank/Introduction_pages/onboarding.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingPage()))

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 190, left: 20, right: 20,bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Image.asset('assets/arlysis_logo.png',height: 200,),
              Expanded(child: Container()),
              const Text('Powered by',
                style: TextStyle(
                  color: Color(0xff374988),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('Arlysis',
                style: TextStyle(
                  color: Color(0xff374988),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}