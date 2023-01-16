import 'package:admin/color_constants.dart';
import 'package:admin/screens/patients/formheader.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class FormCreation1 extends StatefulWidget {
  const FormCreation1({Key? key}) : super(key: key);

  @override
  State<FormCreation1> createState() => _FormCreation1State();
}

class _FormCreation1State extends State<FormCreation1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final _formKey1 = GlobalKey<FormState>();
    // ignore: unused_local_variable
    return Container(
      color: backgroundColor,
      width: width,
      child: Column(children: [
        FormHeader(),
        Form(
          key: _formKey1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PrimaryInfos(heigth: heigth, width: width),
          ),
        )
      ]),
    );
  }
}

class PrimaryInfos extends StatefulWidget {
  const PrimaryInfos({
    Key? key,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  final double heigth;
  final double width;

  @override
  State<PrimaryInfos> createState() => _PrimaryInfosState();
}

class _PrimaryInfosState extends State<PrimaryInfos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            GestureDetector(
              child: Icon(Icons.photo_camera_front_outlined,
                  size: 100, color: Colors.grey),
            ),
          ],
        ),
        TextFormField(
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              //<-- SEE HERE
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              //<-- SEE HERE
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            labelText: 'Name',
          ),
        ),
        CustomField(name: "Code d`identification"),
        MyCalenderField(
          name: "Date de Naissance",
        ),
        CustomDropDownField(
          defaultvalue: "homme",
          dropdownitem: ["homme", "femme"],
          fieldname: "Genre",
        ),
        CustomDropDownField(
          defaultvalue: "pediatrie",
          dropdownitem: ["pediatrie", "gynaecology", "pharmacie", "chirugie"],
          fieldname: "Departements",
        ),
        CustomDropDownField(
          defaultvalue: "ivan mahi",
          dropdownitem: [
            "ivan mahi",
          ],
          fieldname: "Medecine soignants",
        ),
        CustomDropDownField(
          defaultvalue: "Docteur",
          dropdownitem: [
            "Docteur",
            "Mousier"
                "Madame"
                "Proffeseur"
          ],
          fieldname: "Titre",
        ),
        CustomDropDownField(
          defaultvalue: "Docteur",
          dropdownitem: [
            "Docteur",
            "Mousier"
                "Madame"
                "Proffeseur"
          ],
          fieldname: "Mot cles",
        ),
      ],
    );
  }
}
