import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/desktoplayout.dart';
import 'package:admin/screens/patients/forms.dart/analyseducorp.dart';
import 'package:admin/screens/patients/forms.dart/test_cutane.dart';
import 'package:admin/screens/patients/forms.dart/visage.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';

import 'package:flutter/material.dart';

var index = 1;

class FormCreation7 extends StatefulWidget {
  const FormCreation7({Key? key}) : super(key: key);

  @override
  State<FormCreation7> createState() => _FormCreation7State();
}

class _FormCreation7State extends State<FormCreation7> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (myindex == 7)
          Container(
            height: heigth / 12,
            padding: EdgeInsets.all(8),
            width: Responsive.isDesktop(context)
                ? width / 1.5
                : Responsive.isTablet(context)
                    ? width
                    : width,
            color: Colors.white,
            child: Row(children: [
              TextButton(
                child: CustomText(
                  text: " ANALYSE DU CORPS",
                  color: index == 1 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 1;
                  });
                },
              ),
              TextButton(
                child: CustomText(
                  text: "ANALYSE DE LA PEAU(VISAGE)",
                  color: index == 2 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 2;
                  });
                },
              ),
              TextButton(
                child: CustomText(
                  text: "TEST CUTANEE PROTOTYPE",
                  color: index == 3 ? Colors.blue : col,
                  size: Responsive.isDesktop(context)
                      ? 14
                      : Responsive.isTablet(context)
                          ? 14
                          : 11,
                ),
                onPressed: () {
                  setState(() {
                    // update your data model here
                    index = 3;
                  });
                },
              ),
            ]),
          ),
        index == 1
            ? Form1()
            : index == 2
                ? Form2()
                : Form3()
      ],
    );
  }
}

class Form2 extends StatelessWidget {
  const Form2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey71 = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
        child: Form(
      key: _formKey71,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
            text: "CHARACTERISQUE DE LA PEAU",
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
            color: Colors.grey),
        CustomDropDownField2(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "Biotype de peau"),
        CustomDropDownField2(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "Coloration"),
        CustomDropDownField2(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "Degre d'hydration"),
        CustomDropDownField2(
            defaultvalue: "default",
            dropdownitem: ["default"],
            fieldname: "Epaisseur ou texture"),
        CustomText(
            text: "Acne",
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
            color: Colors.grey),
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
            crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
            childAspectRatio: Responsive.isDesktop(context)
                ? 25
                : Responsive.isTablet(context)
                    ? 12
                    : 12,
            shrinkWrap: true,
            children: List.generate(mylist1.length, (index) {
              return Center(
                child: mylist1[index],
              );
            })),
        CustomText(
            text: "Rides preauriculaires",
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
            color: Colors.grey),
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
            crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
            childAspectRatio: Responsive.isDesktop(context)
                ? 25
                : Responsive.isTablet(context)
                    ? 12
                    : 12,
            shrinkWrap: true,
            children: List.generate(mylist2.length, (index) {
              return Center(
                child: mylist2[index],
              );
            })),
        CustomText(
            text: "Troubles de la peau",
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
            color: Colors.grey),
        GridView.count(
            crossAxisCount: Responsive.isDesktop(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
            crossAxisSpacing: Responsive.isDesktop(context) ? 50 : 10,
            childAspectRatio: Responsive.isDesktop(context)
                ? 25
                : Responsive.isTablet(context)
                    ? 12
                    : 12,
            shrinkWrap: true,
            children: List.generate(mylist3.length, (index) {
              return Center(
                child: mylist3[index],
              );
            })),
        CustomText(
            text: "Soins a domicile(Routine propres)",
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
            color: Colors.grey),
        CustomCheckBox(name: "Effacer"),
        CustomField2(name: "Remarque claire"),
        CustomCheckBox(name: "Tonalite"),
        CustomField2(name: "Remarque sur le ton"),
        CustomCheckBox(name: "Hydrate"),
        CustomField2(name: "Remarque sur l'hydration"),
        CustomCheckBox(name: "Protection"),
        CustomField2(name: "Remarque sur la protection"),
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Date',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
            DataColumn(
              label: Text(
                'RENDEZ-VOUS',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
            DataColumn(
              label: Text(
                'PATIENT',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
            DataColumn(
              label: Text(
                'DOCTEUR',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              ),
            ),
            DataColumn(
              label: Text(
                '1',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '2',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '3',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '4',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '5',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '6',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '7',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '8',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '9',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '10',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '11',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '12',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '13',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                '14',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return Visage(
                              heigth: heigth,
                              width: width,
                            );
                          });
                    },
                    child: Text("ajouter une ligne"))),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
              ],
            ),
          ],
        )
      ]),
    ));
  }
}

List mylist1 = [
  CustomCheckBox(name: "Papules"),
  CustomCheckBox(name: "Comedons noirs"),
  CustomCheckBox(name: "Pustules"),
  CustomCheckBox(name: "Comedons noirs")
];
List mylist2 = [
  CustomCheckBox(name: "Devant"),
  CustomCheckBox(name: "Froncer les sourcil"),
  CustomCheckBox(name: "Silon nasogenien"),
  CustomCheckBox(name: "Cou"),
  CustomCheckBox(name: "Autres"),
];
List mylist3 = [
  CustomCheckBox(name: "Chloasmas"),
  CustomCheckBox(name: "Virtiligo"),
  CustomCheckBox(name: "Melasmas"),
  CustomCheckBox(name: "Modifictaion des cheveux"),
  CustomCheckBox(name: "Lentigines"),
  CustomCheckBox(name: "Pores larges"),
  CustomCheckBox(name: "Ephelides"),
  CustomCheckBox(name: "Capillaire fragile"),
  CustomCheckBox(name: "Taupes"),
  CustomCheckBox(name: "Flaccidite"),
  CustomCheckBox(name: "Achromias"),
  CustomCheckBox(name: "Veillesement premature"),
];
