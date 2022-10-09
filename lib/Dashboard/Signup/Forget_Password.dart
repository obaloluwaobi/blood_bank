import 'package:blood_bank/Dashboard/Signup/Forget_Password_Otp_Verification.dart';
import 'package:blood_bank/Dashboard/Signup/Login_page.dart';
import 'package:flutter/material.dart';

class Forget_password extends StatefulWidget {
  const Forget_password({Key? key}) : super(key: key);

  @override
  State<Forget_password> createState() => _Forget_passwordState();
}

class _Forget_passwordState extends State<Forget_password> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body:Form(
      key: _formKey,
      child: Container(
        padding:  const EdgeInsets.only(top: 70, left: 20, right: 20,bottom: 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pop(false);
                }, icon: Icon(Icons.arrow_back_ios,color: Colors.black87,)),
                SizedBox(width: 40,),
                Text('Forget Password',
                  style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Forget Password',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Please enter your registered email address, we will'),
                SizedBox(height: 5,),
                Text('provide you with the reset password link and'),
                SizedBox(height: 5,),
                Text('verfication OTP'),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(0),
              child: TextFormField(
                validator: (value){
                  if (value== null||value.isEmpty){
                    return 'Please enter your email Address';
                  }
                  return null;
                },
                //obscureText: _isObscure,
                decoration: InputDecoration(
                  // hintTextDirection: ,
                    hintText: 'Enter Your Email',
                 border: OutlineInputBorder()
              ),
            ),
            ),
            Expanded(child: Container()),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Forget_password_otp()));
              }
            },
              style: ElevatedButton.styleFrom(primary: Color(0xff374988),minimumSize: const Size.fromHeight(50),),
              child: const Text('Continues',
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
    ),

    );
  }
}
