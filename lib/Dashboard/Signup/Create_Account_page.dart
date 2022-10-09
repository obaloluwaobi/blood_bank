import 'package:blood_bank/Dashboard/Signup/Create_Account_done.dart';
import 'package:blood_bank/Dashboard/Signup/Login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';

class Create_account extends StatefulWidget {
  const Create_account({Key? key}) : super(key: key);

  @override
  State<Create_account> createState() => _Create_accountState();
}

class _Create_accountState extends State<Create_account> {

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: SingleChildScrollView(
      child:Form(
        key: _formKey,
        child:Container(
           color: Color(0xffF5F5F7),
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
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Create Account',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email Address'),
                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: TextFormField(
                        controller: _name,
                        validator: (value){
                          if (value== null||value.isEmpty){
                            return 'Please enter Your email address';
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
                        hintText: 'Enter Organization Email',
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
                       controller: _password,
                       validator: (value){
                         if (value== null||value.isEmpty){
                           return 'Please create your password';
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
                    ),),
                    SizedBox(height: 20,),
                    Text('Confirm Password'),
                    SizedBox(height: 5,),
                    Padding(padding: EdgeInsets.zero,child:
                    TextFormField(
                      controller: _confirmpassword,
                      validator: (value){
                        if (value== null||value.isEmpty){
                          return 'please confirm your password';
                        }
                        else if (value != _password.text){
                          return 'Not Match';
                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          hintText: 'Confirm Your Password',
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                              icon: Icon( _isObscure ? Icons.visibility_off : Icons.visibility,)),
                          border: OutlineInputBorder()
                      ),
                    ),),

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
                    Text('Or Signup With'),
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
                        MaterialPageRoute(builder: (context) => Create_acct_done(name: _name.text,)));
                  }
                },
                  style: ElevatedButton.styleFrom(primary: Color(0xff374988),minimumSize: const Size.fromHeight(50),),
                  child: const Text('Create an Account',
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
                        TextSpan(text: 'Already have an Account?',style: TextStyle(
                          color: Colors.black87,
                        )),
                        TextSpan(text: 'Login',
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
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
               // Expanded(child: Container()),
          //      Container(
              //    padding: const EdgeInsets.only(left: 20, right: 20,),
             //     child: Row(
             //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //     children: [
               //       Text('Contact us',style: TextStyle(fontSize: 10),),
                   //   Text('legal Policy',style: TextStyle(fontSize: 10),),
//
                   //   Row(
                   //     children: [
                   //       Icon(Icons.sports_volleyball_outlined,size: 10,),
                    //      Text('Change Region',style: TextStyle(fontSize: 10),),
                     //     Icon(Icons.arrow_drop_down)
                      //  ],
                     // ),

                   // ],
                 // ),
               // ),
                //SizedBox(height: 40,),
              ],
            ),

          ),
      ),
      ),
    );
  }
}
