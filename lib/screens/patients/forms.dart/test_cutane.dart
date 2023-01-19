import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class Form3 extends StatelessWidget {
  const Form3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey73 = GlobalKey<FormState>();
    return Container(
        child: Form(
      key: _formKey73,
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
