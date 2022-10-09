import 'package:blood_bank/Dashboard/Home/custom_search.dart';
import 'package:flutter/material.dart';

class Inventory extends StatelessWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF5F5F7),
      body: Container(
          child: Column(
              children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black87,)),
                        SizedBox(width: 40,),
                        Text('Inventory',
                          style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Image.asset('assets/search.png')
                  ],
                ),
            ]
      )
    ),
    );
  }
}
