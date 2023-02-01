import 'package:admin/screens/dashboard/page.dart';
import 'package:admin/screens/docteurs/doctorpage.dart';
import 'package:admin/screens/docteurs/acceuildocteur.dart';
import 'package:admin/screens/hospitalisation/hospitalisation.dart';
import 'package:admin/screens/patients/patient_details.dart';
import 'package:admin/widgets/Cards.dart';
import 'package:flutter/material.dart';

class HomeList {
  HomeList({this.navigateScreen, this.imagePath = '', required this.title});

  Widget? navigateScreen;
  String imagePath;
  Widget title;

  static List<HomeList> homeList = [
    HomeList(
        imagePath: 'assets/images/background-1.jpeg',
        navigateScreen: PatientDetails(),
        title: MyCard1(
          num: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-1.jpeg',
        navigateScreen: Hospitalisation(),
        title: MyCard2(
          num: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-2.jpeg',
        navigateScreen: Acceuildocteur(),
        title: MyCard3(
          num1: 0,
          num2: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-3.jpeg',
        navigateScreen: Acceuildocteur(),
        title: MyCard4(
          num: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-3.jpeg',
        navigateScreen: HelpScreen(),
        title: MyCard5(
          num: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-2.jpeg',
        navigateScreen: HelpScreen(),
        title: MyCard6(
          num1: 0,
          num2: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-2.jpeg',
        navigateScreen: HelpScreen(),
        title: MyCard7(
          num1: 0,
          num2: 0,
        )),
    HomeList(
        imagePath: 'assets/images/background-2.jpeg',
        navigateScreen: HelpScreen(),
        title: MyCard8(
          time1: '00',
          time2: '00',
        )),
    HomeList(
        imagePath: 'assets/images/background-2.jpeg',
        navigateScreen: HelpScreen(),
        title: MyCard9(
          num1: 0,
          num2: 0,
        )),
  ];
}
