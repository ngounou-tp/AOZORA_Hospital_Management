import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/patients/forms.dart/form2.dart';
import 'package:admin/screens/patients/forms.dart/form3.dart';
import 'package:admin/screens/patients/forms.dart/form4.dart';
import 'package:admin/screens/patients/forms.dart/form5.dart';
import 'package:admin/screens/patients/forms.dart/form6.dart';
import 'package:admin/screens/patients/forms.dart/form7.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

var myindex = 2;
Color col = Colors.black87;

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
        Responsive.isDesktop(context)
            ? Container(
                height: heigth / 13,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        child: CustomText(
                          text: "Informations Generales",
                          color: myindex == 2 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 2;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Informations sur l'hospital",
                          color: myindex == 3 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 3;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Evaluation Clinique",
                          color: myindex == 4 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 4;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Maladies",
                          color: myindex == 5 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 5;
                            col = Colors.black12;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Historique Clinique",
                          color: myindex == 6 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 6;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Apparence",
                          color: myindex == 7 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 7;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Chirugies",
                          color: myindex == 8 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 8;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Famille",
                          color: myindex == 9 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 9;
                          });
                        },
                      ),
                    ]),
              )
            : Container(
                color: Colors.white,
                height: heigth / 8,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        child: CustomText(
                          text: "Informations Generales",
                          color: myindex == 2 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 2;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Informations sur l'hospital",
                          color: myindex == 3 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 3;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Evaluation Clinique",
                          color: myindex == 4 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 4;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Maladies",
                          color: myindex == 5 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 5;
                            col = Colors.black12;
                          });
                        },
                      ),
                      TextButton(
                        child: CustomText(
                          text: "Historique Clinique",
                          color: myindex == 6 ? Colors.blue : col,
                          size: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 14
                                  : 11,
                        ),
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            myindex = 6;
                          });
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        TextButton(
                          child: CustomText(
                            text: "Apparence",
                            color: myindex == 7 ? Colors.blue : col,
                            size: Responsive.isDesktop(context)
                                ? 14
                                : Responsive.isTablet(context)
                                    ? 14
                                    : 11,
                          ),
                          onPressed: () {
                            setState(() {
                              // update your data model here
                              myindex = 7;
                            });
                          },
                        ),
                        TextButton(
                          child: CustomText(
                            text: "Chirugies",
                            color: myindex == 8 ? Colors.blue : col,
                            size: Responsive.isDesktop(context)
                                ? 14
                                : Responsive.isTablet(context)
                                    ? 14
                                    : 11,
                          ),
                          onPressed: () {
                            setState(() {
                              // update your data model here
                              myindex = 8;
                            });
                          },
                        ),
                        TextButton(
                          child: CustomText(
                            text: "Famille",
                            color: myindex == 9 ? Colors.blue : col,
                            size: Responsive.isDesktop(context)
                                ? 14
                                : Responsive.isTablet(context)
                                    ? 14
                                    : 11,
                          ),
                          onPressed: () {
                            setState(() {
                              // update your data model here
                              myindex = 9;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ]),
              ),
        myindex == 2
            ? FormCreation2()
            : myindex == 3
                ? FormCreation3()
                : myindex == 4
                    ? FormCreation4()
                    : myindex == 5
                        ? FormCreation5()
                        : myindex == 6
                            ? FormCreation6()
                            : FormCreation7()
      ],
    );
  }
}
