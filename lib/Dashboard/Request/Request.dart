import 'package:flutter/material.dart';


class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
               Image.asset('assets/IncomingRequest.png',height: 700,width: MediaQuery.of(context).size.width,)
               ] )
              ],
        ),
      ),
    );
  }
}
