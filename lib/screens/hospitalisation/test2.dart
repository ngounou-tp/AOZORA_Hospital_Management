import 'package:flutter/material.dart';

class SecondRoutes extends StatefulWidget {
  const SecondRoutes({Key? key}) : super(key: key);

  @override
  State<SecondRoutes> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoutes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('retournez!!!'),

          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              padding: MaterialStateProperty.all(EdgeInsets.all(50)),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
        ),
      ),
    );;
  }
}
