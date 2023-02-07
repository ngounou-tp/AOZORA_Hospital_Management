import 'package:admin/responsive.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/cupertino.dart';

class InfoGeneraleOrdo extends StatelessWidget {
  const InfoGeneraleOrdo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
            crossAxisSpacing: Responsive.isDesktop(context) ? 30 : 10,
            childAspectRatio: Responsive.isDesktop(context)
                ? 11
                : Responsive.isTablet(context)
                    ? 11
                    : 10,
            shrinkWrap: true,
            children: List.generate(mylist1.length, (index) {
              return Center(
                child: mylist1[index],
              );
            })),
        CustomField2(name: "Notes d'ordonance")
      ],
    );
  }
}

List mylist1 = [
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Rendez-vous"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Politique d'assurance"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Hospitalisation"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Compagnie d'assurance"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Traitement"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Chirugie"),
  CustomCheckBox(name: "Facture a livre a"),
];
