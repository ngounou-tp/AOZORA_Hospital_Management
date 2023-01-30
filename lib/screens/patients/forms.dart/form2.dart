import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
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
      padding: EdgeInsets.only(top: 20),
      width: width,
      child: Form(
        key: _formKey2,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          if (Responsive.isMobile(context))
            CustomText(text: "Informations Generale", size: 15),
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
        ]),
      ),
    );
  }
}

List mylist = [
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
];
