import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateTime.now.toString()),
            Text("0", style: TextStyle(
              fontSize: 35,
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
