import 'package:blood_bank/Dashboard/Signup/Login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Create_Account_otp extends StatelessWidget {
  const Create_Account_otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: Container(
        padding:  const EdgeInsets.only(top: 70, left: 20, right: 20,bottom: 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('OTP Verification',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Please enter OTP sent to your email address'),
              ],
            ),
            SizedBox(height: 20,),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 60,
              style: TextStyle(
                  fontSize: 30
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin){
                print("Completed:"+pin);
              },
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text:TextSpan(children: [
                    TextSpan(text: 'Didn`t receive any code?',style: TextStyle(
                      color: Colors.black87,
                    )),
                    TextSpan(text: 'Resend Code',
                        recognizer: TapGestureRecognizer()..onTap = () {

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
            Expanded(child: Container()),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) =>
                  Login()));
            },
              style: ElevatedButton.styleFrom(primary: Color(0xff374988),minimumSize: const Size.fromHeight(50),),
              child: const Text('Verify',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
