import 'package:admin/responsive.dart';
import 'package:admin/screens/sante-infirmier/forms/upcontainer.dart';

import 'package:admin/screens/traitements/traitement/traitement-appbar.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var tabindex1 = 0;
var tabindex2 = 0;
var tabindex3 = 0;
var tabindex4 = 0;
var tabindex5 = 0;

class ProccedureCreation2 extends StatefulWidget {
  ProccedureCreation2({Key? key}) : super(key: key);

  @override
  State<ProccedureCreation2> createState() => _ProccedureCreationState2();
}

class _ProccedureCreationState2 extends State<ProccedureCreation2> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final _formKeysante = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: traitementAppBar(
        context,
        scaffoldKey,
      ),
      body: ListView(
        children: [
          UpContainer(),
          Container(
              height: heigth / 18,
              color: Colors.white,
              child: Row(
                children: [
                  CustomElevatedButton(function: () {}, name: "COURANT"),
                  SizedBox(
                    width: 3,
                  ),
                  CustomElevatedButton(function: () {}, name: "ANNULLER"),
                  SizedBox(
                    width: 3,
                  ),
                  CustomElevatedButton(
                      function: () {}, name: "CREER UNE FACTURE"),
                  Spacer(),
                  Container(
                    height: heigth / 18,
                    width: width / 15,
                    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "PROGRAMME",
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
                        text: "COURANT",
                        size: 11,
                        color: Colors.grey,
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
                        text: "TERMINER",
                        size: 11,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              )),
          Form(
            key: _formKeysante,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.count(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 2
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      crossAxisSpacing: Responsive.isDesktop(context) ? 10 : 10,
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
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white),
                      height: heigth / 15,
                      width: width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: CustomText(
                              text: "Produits Consommes",
                              size: 20,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )),
                  Container(
                    width: width / 3,
                    padding: const EdgeInsets.all(10),
                    child: CustomDropDownField(
                        defaultvalue: "default",
                        dropdownitem: ["default"],
                        fieldname: "Kit"),
                  ),
                  DataTable(
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'CONSOMMABLES',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' QUANTITE',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'LOT/SERIAL NUMBER',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'UNIT PRICE',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'SUBTOTAL',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'DATE',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'NOTE',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '',
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(tabindex1 == 0
                              ? ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      // update your data model here
                                      tabindex1 = 1;
                                    });
                                  },
                                  child: Text("ajouter une ligne"))
                              : TextFormField()),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1
                              ? Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 15,
                                )
                              : Text('')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(tabindex1 == 1
                              ? ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      // update your data model here
                                      tabindex2 = 1;
                                    });
                                  },
                                  child: Text("ajouter une ligne"))
                              : tabindex2 == 1
                                  ? TextFormField()
                                  : Text("")),
                          DataCell(tabindex2 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex2 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex2 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex2 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex2 == 1
                              ? Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 15,
                                )
                              : tabindex3 == 0
                                  ? Text('')
                                  : TextFormField()),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(tabindex2 == 1
                              ? ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      // update your data model here
                                      tabindex3 = 1;
                                    });
                                  },
                                  child: Text("ajouter une ligne"))
                              : tabindex3 == 1
                                  ? TextFormField()
                                  : Text("")),
                          DataCell(tabindex3 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex3 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex3 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex3 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex3 == 1
                              ? Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 15,
                                )
                              : Text('')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(tabindex3 == 1
                              ? ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      // update your data model here
                                      // ignore: unnecessary_statements
                                      tabindex4 == 1;
                                    });
                                  },
                                  child: Text("ajouter une ligne"))
                              : tabindex4 == 1
                                  ? TextFormField()
                                  : Text("")),
                          DataCell(tabindex4 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex4 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex4 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex4 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex1 == 1 ? TextFormField() : Text('')),
                          DataCell(tabindex4 == 1
                              ? Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 15,
                                )
                              : Text('')),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

var mylist = [
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Patient"),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Docteur"),
  MyCalenderField3(name: "Date"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Proccedure"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Traitement"),
  CustomField(name: "Prix"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Departement"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Rendez-vous"),
  CustomField(name: "Duration maladie")
];
