import 'package:blood_bank/Dashboard/Signup/Create_Account_page.dart';
import 'package:flutter/material.dart';

class WhoPage extends StatelessWidget {
  const WhoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 90, left: 20, right: 20,),
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
            SizedBox(height: 20,),
            Image.asset('assets/onboarding3.png'),
            ElevatedButton(onPressed: ()=> Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => Create_account())),
             style: ElevatedButton.styleFrom(primary: Color(0xff374988),minimumSize: const Size.fromHeight(50),),
              child: const Text('BLOOD BANK',
               style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(minimumSize: const Size.fromHeight(50),side: BorderSide(width: 1.0,color:Color(0xff374988), )) ,
                child: Text('HOSPITALS',style: TextStyle(
                    color: Color(0xff374988),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),)
            ),
            Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20,),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Contact us',style: TextStyle(fontSize: 10),),
                Text('legal Policy',style: TextStyle(fontSize: 10),),

                Row(
                  children: [
                    Icon(Icons.sports_volleyball_outlined,size: 10,),
                    Text('Change Region',style: TextStyle(fontSize: 10),),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),

              ],
            ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
