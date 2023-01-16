import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation3 extends StatefulWidget {
  const FormCreation3({Key? key}) : super(key: key);

  @override
  State<FormCreation3> createState() => _FormCreation3State();
}

class _FormCreation3State extends State<FormCreation3> {
  @override
  Widget build(BuildContext context) {
    final _formKey3 = GlobalKey<FormState>();
    return Form(
      key: _formKey3,
      child: Column(
        children: [
          CustomText(text: "Informations sur hospital", size: 30),
          CustomDropDownField(
              defaultvalue: "O",
              dropdownitem: ["O", "A", "B"],
              fieldname: "Groupe Sanguin"),
          CustomCheckBox(name: "Est recepteur de sang?"),
          CustomCheckBox(name: "Est donneur de sang?"),
          CustomCheckBox(name: "Graphyque de croissance des enfants?"),
          CustomCheckBox(name: "Rapprochement d`entreuprise?"),
          CustomDropDownField(
            defaultvalue: "ivan mahi",
            dropdownitem: [
              "ivan mahi",
            ],
            fieldname: "Medecine Referents",
          ),
          CustomDropDownField(
            defaultvalue: "service soignant",
            dropdownitem: [
              "service soignant",
            ],
            fieldname: "Service D`inscription",
          ),
          MyCalenderField(
            name: "Date de Deces",
          ),
          CustomField(name: "Code barre"),
          CustomElevatedButton(function: () {}, name: "Generer un code barre"),
        ],
      ),
    );
  }
}
