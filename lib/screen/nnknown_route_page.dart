import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
           Center(
             child: Text('Not Found the Page', style: TextStyle(
               fontSize: 35,
               fontWeight: FontWeight.bold
             ),),
           )
        ],
      ),
    );
  }
}
