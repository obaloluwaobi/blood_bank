import 'package:blood_bank/Dashboard/Signup/Create_Account_Otp.dart';
import 'package:blood_bank/Dashboard/Signup/Login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Create_acct_done  extends StatelessWidget {
  String name;
  Create_acct_done ({Key? key,required this.name,required}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: Container(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/email.png'),
            SizedBox(height: 70,),
            Text('Check your email!',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),),
            SizedBox(height: 20,),
            Column(
              children: [
                Text('To Confirm your email address,tap the'),
                SizedBox(height: 5,),
                Text(' button in the email we sent to'),
                SizedBox(height: 5,),
                Text('$name',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.of(context).push(
                MaterialPageRoute(builder: (_) =>Create_Account_otp()));},
              style: ElevatedButton.styleFrom(primary: Color(0xff374988),
                //minimumSize: const Size.fromWidth(5),
                ),
              child: const Text('Open Email App',
                style: TextStyle(
                    color: Color(0xffF5F5F7),
                    fontWeight: FontWeight.w500,
                    fontSize: 13),

              ),
            ),
            SizedBox(height: 15,),
            Expanded(child: Container()),
            Column(
              children: [
                Text('Already have an Account?'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text:TextSpan(children: [
                        TextSpan(text: 'use Password to ',style: TextStyle(
                          color: Colors.black87,
                        )),
                        TextSpan(text: 'Login',
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_) => Login()));
                            },
                            style: TextStyle(
                                color: Color(0xff373988),
                                fontWeight: FontWeight.w600
                            )
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}

