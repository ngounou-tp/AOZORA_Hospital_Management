import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/desktoplayout.dart';
import 'package:admin/utils/custom_ultility.dart';

import 'package:admin/widgets/customformfields.dart';
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (myindex == 7)
            Container(
              height: heigth / 12,
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
      ),
    );
  }
}

class Form1 extends StatelessWidget {
  const Form1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey71 = GlobalKey<FormState>();
    return Container(
        child: Form(
      key: _formKey71,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname:
                "Qu'elle est la couleur naturelle de votre peau lorsque elle n'est pas bronze?"),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "De quelle couleur naturelle sont vos cheveux?"),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "De quelle couleur sont les yeux?"),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname:
                "Combien de taches de rouseur as votre corps naturellement?"),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname:
                "Quelle categorie decrit le mieux votre patrimoine genetique?"),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname:
                "Quelle categorie decrit le mieux votre potentiel de brulure apres"),
        CustomText(
          text: " une d'exposition au soleil?",
          size: Responsive.isDesktop(context)
              ? 18
              : Responsive.isTablet(context)
                  ? 16
                  : 11,
        ),
        CustomDropDownField(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname:
                "Quelle categorie decrit le mieux votre potentiel de bronzage?"),
        CustomDropDownField(
            defaultvalue: "0",
            dropdownitem: ["0"],
            fieldname: "score de la peau"),
        Row(
          children: [
            CustomText(
              text: "Prototype de peau rempli par le patient",
              size: Responsive.isDesktop(context)
                  ? 18
                  : Responsive.isTablet(context)
                      ? 16
                      : 11,
            ),
            Spacer(),
            CustomCheckBox(name: "Peau tres sensible"),
          ],
        ),
      ]),
    ));
  }
}

class Form2 extends StatelessWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(text: "form2"),
    );
  }
}

class Form3 extends StatelessWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomText(text: "form3"),
    );
  }
}
