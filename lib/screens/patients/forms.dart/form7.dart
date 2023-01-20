import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/desktoplayout.dart';
import 'package:admin/screens/patients/forms.dart/analyse_du_visage.dart';
import 'package:admin/screens/patients/forms.dart/analyseducorp.dart';
import 'package:admin/screens/patients/forms.dart/test_cutane.dart';
import 'package:admin/utils/custom_ultility.dart';

import 'package:flutter/material.dart';

var index = 1;

class FormCreation7 extends StatefulWidget {
  const FormCreation7({Key? key}) : super(key: key);

  @override
  State<FormCreation7> createState() => _FormCreation7State();
}

class _FormCreation7State extends State<FormCreation7> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (myindex == 7)
          Container(
            height: heigth / 12,
            padding: EdgeInsets.all(8),
            width: Responsive.isDesktop(context)
                ? width / 1.5
                : Responsive.isTablet(context)
                    ? width
                    : width,
            color: Colors.white,
            child: Row(children: [
              TextButton(
                child: CustomText(
                  text: " ANALYSE DU CORPS",
                  color: index == 1 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 1;
                  });
                },
              ),
              TextButton(
                child: CustomText(
                  text: "ANALYSE DE LA PEAU(VISAGE)",
                  color: index == 2 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 2;
                  });
                },
              ),
              TextButton(
                child: CustomText(
                  text: "TEST CUTANEE PROTOTYPE",
                  color: index == 3 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 3;
                  });
                },
              ),
            ]),
          ),
        index == 1
            ? Form1()
            : index == 2
                ? Form2()
                : Form3()
      ],
    );
  }
}
