import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class ProccedureDuPatient extends StatelessWidget {
  const ProccedureDuPatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDropDownField2(
            dropdownitem: ["default"],
            defaultvalue: "default",
            fieldname: "Proccedures Group",
          ),
          CustomElevatedButton(
            name: "creer une facture combine",
            function: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return MyAlert();
                  });
            },
          ),
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: CustomText(
                      text: "NOM", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                text: "PATIENT",
                size: 11,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                      text: "PROCCEDURE DU PATIENT",
                      weight: FontWeight.bold,
                      size: 11)),
              DataColumn(
                  label: CustomText(
                      text: "PRIX", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                      text: "DOCTEUR", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                      text: "DATE", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                      text: "DATE DE FIN", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                      text: "DURATION", weight: FontWeight.bold, size: 11)),
              DataColumn(
                  label: CustomText(
                text: "ETAT",
                size: 11,
                weight: FontWeight.bold,
              )),
              DataColumn(label: Icon(Icons.menu, size: 15, color: Colors.grey)),
            ],
            rows: [
              DataRow(
                cells: <DataCell>[
                  DataCell(CustomElevatedButton(
                    function: () {},
                    name: "Ajouter une ligne",
                  )),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class MyAlert extends StatelessWidget {
  MyAlert({
    Key? key,
  }) : super(key: key);

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          CustomText(
            text: "Erreur ultilisateur",
            color: Colors.grey,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                size: 30,
                color: Colors.grey,
              ))
        ],
      ),
      content: Container(
          padding: EdgeInsets.all(20),
          child: CustomText(
              text:
                  "Il y'a pas de proccedure de facturation tout est deja facture",
              color: Colors.grey,
              size: 16)),
      actions: [
        CustomElevatedButton(
            function: () {
              Navigator.pop(context);
            },
            name: "OK"),
      ],
    );
  }
}
