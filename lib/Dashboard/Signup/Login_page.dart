import 'package:blood_bank/Dashboard/Signup/Create_Account_page.dart';
import 'package:blood_bank/Dashboard/Signup/Forget_Password.dart';
import 'package:blood_bank/Dashboard/dashboard_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: SingleChildScrollView(
        child:Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(top: 70, left: 20, right: 20,bottom: 0),
          child: Column(
            children: [
              Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/arlysis_logo.png',height: 25,),
                  SizedBox(width: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('A',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('R',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('L',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('Y',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('S',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('I',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                      SizedBox(width: 5,),
                      Text('S',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ,color: Color(0xff374988)
                      ),),
                    ],
                  ),

                ],),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Log in',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Welcome Back!',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username'),
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: TextFormField(
                      // controller: controller,
                      validator: (value){
                        if (value== null||value.isEmpty){
                          return 'Please enter your username';
                        }
                        //else if(value==null||value.isNotEmpty){
                        //  return FlutterPwValidator(
                        //   width: 400,
                        // height: 150,
                        // minLength: 8,
                        //   onSuccess:(){},
                        //  controller: controller);
                        //  };
                        return null;
                      },

                      decoration: InputDecoration(
                        // errorText: 'worn',
                        border: OutlineInputBorder(),
                        hintText: 'Enter your Username',
                        suffixIcon:  Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Password'),
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: TextFormField(
                      validator: (value){
                        if (value== null||value.isEmpty){
                          return 'Please enter Your password';
                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        // hintTextDirection: ,
                          hintText: 'Enter Your Password',
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                              icon: Icon( _isObscure ? Icons.visibility_off : Icons.visibility,)),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: this.check, onChanged: (boolcheck){
                        setState(() {
                          this.check = true;
                        });
                      },),
                      Text('Remember me',style: TextStyle(
                          fontSize: 10)
                      ),
                    ],
                  ),

                  Expanded(child: Container()),
                  RichText(
                    text:TextSpan(children: [
                     const TextSpan(text: 'Forget password? ',style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                      )),
                      TextSpan(text: 'Get help Signing in',
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Forget_password()));
                          },
                          style: const TextStyle(
                              color: Color(0xff373988),
                              fontSize: 10,
                              fontWeight: FontWeight.w600
                          )
                      )
                    ]
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 0.8,
                    width: 99,
                    color: Colors.black87,

                  ),
                  Text('Or Login With'),
                  Container(
                    height: 0.8,
                    width: 99,
                    color: Colors.black87,

                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/google.png',width: 30,),
                  Image.asset('assets/appleicon.png',width: 50,),

                ],),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HospitalDashboardPage()));
                }
              },
                style: ElevatedButton.styleFrom(primary: Color(0xff374988),minimumSize: const Size.fromHeight(50),),
                child: const Text('Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text:TextSpan(children: [
                        TextSpan(text: 'New to us? ',style: TextStyle(
                          color: Colors.black87,
                        )),
                        TextSpan(text: 'Create an Account',
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Create_account()));
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
        ),
      ),
     ),
   );
  }
}
