import 'package:admin/responsive.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Form(
        key: _formKey3,
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}

List mylist = [
  CustomDropDownField(
      defaultvalue: "O",
      dropdownitem: ["O", "A", "B"],
      fieldname: "Groupe Sanguin"),
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
  CustomCheckBox(name: "Est recepteur de sang?"),
  CustomCheckBox(name: "Est donneur de sang?"),
  CustomCheckBox(name: "Graphyque de croissance des enfants?"),
  CustomCheckBox(name: "Rapprochement d`entreuprise?"),
  CustomField(name: "Code barre"),
  CustomElevatedButton(function: () {}, name: "Generer un code barre"),
];
