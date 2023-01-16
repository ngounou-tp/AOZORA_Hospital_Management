import 'package:admin/color_constants.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation2 extends StatefulWidget {
  const FormCreation2({Key? key}) : super(key: key);

  @override
  State<FormCreation2> createState() => _FormCreation2State();
}

class _FormCreation2State extends State<FormCreation2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final _formKey2 = GlobalKey<FormState>();
    // ignore: unused_local_variable
    return Container(
      color: backgroundColor,
      width: width,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomText(text: "Informations Generale", size: 30),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Fields2(),
            ),
          ),
        )
      ]),
    );
  }
}

class Fields2 extends StatefulWidget {
  const Fields2({
    Key? key,
  }) : super(key: key);

  @override
  State<Fields2> createState() => _Fields2State();
}

class _Fields2State extends State<Fields2> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomField(
        name: "Addresse",
      ),
      CustomDropDownField(
          defaultvalue: "cameroun",
          dropdownitem: ["cameroun", "france", "nigeria"],
          fieldname: "Pays"),
      CustomDropDownField(
          defaultvalue: "douala",
          dropdownitem: ["douala", "yaounde", "baffousam"],
          fieldname: "Ville"),
      CustomField(
        name: "Telephone",
      ),
      CustomField(
        name: "Mobile",
      ),
      CustomField(
        name: "Mobile",
      ),
      CustomDropDownField(
          defaultvalue: "cameroun",
          dropdownitem: ["cameroun", "france", "nigeria"],
          fieldname: "Nationalite"),
      CustomField(
        name: "Passeport number",
      ),
      CustomField(
        name: "Courriel",
      ),
      CustomField(
        name: "Identite gouvern",
      ),
      CustomField(
        name: "Occupation",
      ),
      CustomField(
        name: "Education",
      ),
      CustomField(
        name: "Religion",
      ),
      CustomField(
        name: "Etats civle",
      ),
      CustomField(
        name: "Tribu",
      ),
      CustomDropDownField(
          defaultvalue: "fulbe",
          dropdownitem: ["bamileke", "fulbe", "etc"],
          fieldname: "Groupe ethnique"),
    ]);
  }
}
