import 'package:blood_bank/Dashboard/Signup/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

class New_password extends StatefulWidget {
  const New_password({Key? key}) : super(key: key);

  @override
  State<New_password> createState() => _New_passwordState();
}

class _New_passwordState extends State<New_password> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
    body:Form(
    key: _formKey,
    child:  Container(
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New Password',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Kindly enter a new password'),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(0),
              child: TextFormField(
                controller: controller,
                validator: (value){
                  if (value== null||value.isEmpty){
                    return 'Please enter your new password';
                  }
                  return null;
                },
                //obscureText: _isObscure,
                decoration: InputDecoration(
                  // hintTextDirection: ,
                    hintText: 'Enter Your new password',
                    border: OutlineInputBorder()
                ),
              ),
            ),
       //     SizedBox(height: 10,),
         //   FlutterPwValidator(
            //  width: 400,
            //  height: 100,
            //  minLength: 8,
            //  controller: controller,
            //  onSuccess: (){
           //   print('Matched');
           //  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('data')));
           //  },
           // ),
            Expanded(child: Container()),
            ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                Dialogs.materialDialog(
                    context: context,
                    title: 'Success',
                    msg: 'Your Password Reset was Successful',
                    actions: [
                      IconsButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
                      },
                        text:'Login',
                        color: Color(0xff373488),
                        textStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ]
                );
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
    )
    );
  }
}
