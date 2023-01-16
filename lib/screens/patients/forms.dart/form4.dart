import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation4 extends StatefulWidget {
  const FormCreation4({Key? key}) : super(key: key);

  @override
  State<FormCreation4> createState() => _FormCreation4State();
}

// ignore: unused_element
class _FormCreation4State extends State<FormCreation4> {
  @override
  Widget build(BuildContext context) {
    final _formKey4 = GlobalKey<FormState>();
    return Form(
      key: _formKey4,
      child: Column(
        children: [
          CustomText(text: "Evaluation Clinique", size: 30),
          CustomField(name: "Hauteur"),
          CustomField(name: "Temps"),
          CustomField(name: "RR"),
          CustomField(name: "PA"),
          CustomField(name: "Systolique/Diastplique"),
          CustomField(name: "Glycemie Aleatoire"),
          CustomField(name: "Indice de masse corpS"),
          CustomCheckBox(name: "Douleurs?")
        ],
      ),
    );
  }
}
