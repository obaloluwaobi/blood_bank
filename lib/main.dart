
import 'package:blood_bank/Introduction_pages/splash.dart';
import 'package:flutter/material.dart';




void main(){
  runApp(new MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter OnBoarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
       home: splash(),


    );
  }
}
