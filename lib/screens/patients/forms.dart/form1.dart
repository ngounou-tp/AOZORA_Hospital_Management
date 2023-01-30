import 'dart:io';

import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/formheader.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:file_picker/file_picker.dart';
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
            child: Column(
              children: [
                ImageUpload(),
                GridView.count(
                    crossAxisCount: Responsive.isDesktop(context)
                        ? 2
                        : Responsive.isTablet(context)
                            ? 2
                            : 1,
                    mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                    crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
                    childAspectRatio: Responsive.isDesktop(context)
                        ? 11
                        : Responsive.isTablet(context)
                            ? 11
                            : 12,
                    shrinkWrap: true,
                    children: List.generate(mylist.length, (index) {
                      return Center(
                        child: mylist[index],
                      );
                    })),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

final mylist = [
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
  CustomField(name: "Code d'identification"),
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
    dropdownitem: ["Docteur", "Mousier", "Madame", "Proffeseur"],
    fieldname: "Titre",
  ),
  CustomDropDownField(
    defaultvalue: "Docteur",
    dropdownitem: ["Docteur", "Mousier", "Madame", "Proffeseur"],
    fieldname: "Mot cles",
  )
];

class ImageUpload extends StatefulWidget {
  const ImageUpload({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    List fileList = [];
    // ignore: unused_element
    imagePicker() async {
      FilePickerResult? pickedScreenShots =
          await FilePicker.platform.pickFiles(allowMultiple: false);
      if (pickedScreenShots != null) {
        setState(() {
          fileList =
              pickedScreenShots.paths.map((path) => File(path!)).toList();
        });
        print(fileList);
      }
    }

    return GestureDetector(
      child: Icon(Icons.photo_camera_front_outlined,
          size: width / 10, color: Colors.grey),
      onTap: () => imagePicker(),
    );
  }
}
