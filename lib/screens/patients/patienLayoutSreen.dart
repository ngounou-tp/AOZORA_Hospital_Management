import 'package:admin/screens/patients/upPatientComponent.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scrollbar(
      thumbVisibility: true,
      interactive: true,
      child: Column(
        children: [
          UpSection2(),
          SingleChildScrollView(
              child: Column(
            children: [],
          )),
        ],
      ),
    );
  }
}
