import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/patients/forms.dart/form2.dart';
import 'package:admin/screens/patients/forms.dart/form3.dart';
import 'package:admin/screens/patients/forms.dart/form4.dart';
import 'package:flutter/material.dart';

import '../../utils/custom_ultility.dart';

var myindex = 2;
Color col = Colors.black;

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({Key? key}) : super(key: key);

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormCreation1(),
        Container(
          height: heigth / 10,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TextButton(
              child: CustomText(
                text: "Informations Generales",
                color: myindex == 2 ? Colors.blue : col,
              ),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 2;
                });
              },
            ),
            TextButton(
              child:
                  CustomText(text: "Informations sur l'hospital", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 3;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Evaluation Clinique", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 4;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Maladies", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 5;
                  col = Colors.black12;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Historique Clinique", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 6;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Apparence", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 7;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Chirugies", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 8;
                });
              },
            ),
            TextButton(
              child: CustomText(text: "Famille", color: col),
              onPressed: () {
                setState(() {
                  // update your data model here
                  myindex = 9;
                });
              },
            ),
          ]),
        ),
        myindex == 2
            ? FormCreation2()
            : myindex == 3
                ? FormCreation3()
                : FormCreation4()
      ],
    );
  }
}

// ignore: must_be_immutable
