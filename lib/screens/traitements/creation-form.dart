import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/sante-infirmier/visite-salle.dart/forms/form-creation.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/detail_generaux.dart';

import 'package:admin/screens/traitements/traitement/form-copmponent/form-header.dart';
import 'package:admin/screens/traitements/traitement/form-copmponent/upform.dart';
import 'package:admin/screens/traitements/traitement/traitement-appbar.dart';

import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

import 'traitement/form-copmponent/inscription-form.dart';

var position = 1;

class TraitementForm extends StatefulWidget {
  TraitementForm({Key? key}) : super(key: key);

  @override
  State<TraitementForm> createState() => _TraitementFormState();
}

class _TraitementFormState extends State<TraitementForm> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final _formKeyinscription = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    var mylist1 = [
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Patient"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Departement"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Docteur"),
      MyCalenderField(name: "Date du diagnostic"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Diagnostic"),
      MyCalenderField(name: "Date de fin"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Docteur principale"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Patient Infirmiere"),
      MyCalenderField(name: "Date"),
      Infos(
        text1: "Age au momemt du diagnostic",
        text2: "0,00",
        width: width,
      ),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Service d'inscription"),
      IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.grey,
          size: 20,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return InscriptionForm(
                    heigth: heigth,
                    width: width,
                    formKey721: _formKeyinscription);
              });
        },
      )
    ];

    return Scaffold(
      appBar: traitementAppBar(context, scaffoldKey),
      body: SingleChildScrollView(
          child: Column(
        children: [
          UpTraitementContainer(),
          Container(
              height: heigth / 18,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                children: [
                  CustomElevatedButton(function: () {}, name: "CONFIRMER"),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit, size: 20, color: Colors.blue),
                    label: CustomText(
                      text: "CREER UNE FACTURE",
                      color: Colors.blue,
                      size: 15,
                    ),
                  ),
                  CustomElevatedButton(function: () {}, name: "ANNULER"),
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
                        text: "COMPLETE",
                        size: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )),
          Form(
              child: Container(
            margin: const EdgeInsets.fromLTRB(35, 10, 38, 0),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                color: Colors.white),
            child: Column(
              children: [
                FormHeader(),
                Container(
                  height: heigth / 5,
                  margin: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Row(
                    children: [
                      Center(
                        child: Container(
                          height: heigth / 13,
                          width: width / 5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: CustomText(
                            text: "Treatement Detail",
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Spacer(),
                      ImageUpload(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: GridView.count(
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
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            position = 1;
                          });
                        },
                        child: CustomText(text: "DETAILS GENERAUX", size: 15)),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            position = 2;
                          });
                        },
                        child: CustomText(
                            text: "PROCCEDURES DU PATIENTS", size: 15)),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            position = 3;
                          });
                        },
                        child:
                            CustomText(text: "AUTRES INFORMATIONS", size: 15))
                  ]),
                ),
                position == 1
                    ? DetailGeneraux()
                    : position == 2
                        ? Container()
                        : Container()
              ],
            ),
          ))
        ],
      )),
    );
  }
}
