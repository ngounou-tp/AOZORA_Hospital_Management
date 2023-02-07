import 'package:admin/responsive.dart';
import 'package:admin/screens/ordonnance/ordonnance/infosgenerale.dart';
import 'package:admin/screens/ordonnance/ordonnance/ligneOrdo.dart';
import 'package:admin/screens/ordonnance/ordonnance/ordoupform.dart';
import 'package:admin/screens/ordonnance/ordonnanceAppbar.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var position = 1;

class Ordonanceform extends StatefulWidget {
  Ordonanceform({Key? key}) : super(key: key);

  @override
  State<Ordonanceform> createState() => _OrdonanceformState();
}

class _OrdonanceformState extends State<Ordonanceform> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: ordonnanceAppBar(context, scaffoldKey),
      body: SingleChildScrollView(
          child: Column(
        children: [
          UpOrdoContainer(),
          Container(
              height: heigth / 18,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("CONFIRMER")),
                  Spacer(),
                  Container(
                    height: heigth / 18,
                    width: width / 15,
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "BROUILLON",
                        size: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: heigth / 18,
                    width: width / 15,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "PRESCRIT",
                        size: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                color: Colors.white),
            child: Form(
                child: Column(
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              position = 1;
                            });
                          },
                          child: CustomText(
                            text: "LIGNES D'ORDONNANCE",
                            color: position == 1 ? Colors.black : Colors.grey,
                          )),
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              position = 2;
                            });
                          },
                          child: CustomText(
                            text: "INFORMATIONS GENERALES",
                            color: position == 2 ? Colors.black : Colors.grey,
                          ))
                    ],
                  ),
                ),
                position == 1 ? LigneOrdonance() : InfoGeneraleOrdo()
              ],
            )),
          ),
        ],
      )),
    );
  }
}

List mylist1 = [
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Patient"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Maladies"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Docteur Prescripteur"),
  MyCalenderField(name: "Date d'ordonnance"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Groupe de medicaments"),
  CustomCheckBox(name: "Avertissement de grossesse"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Ancienne d'ordonnance"),
];
