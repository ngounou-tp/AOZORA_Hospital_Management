import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class DetailGeneraux extends StatelessWidget {
  const DetailGeneraux({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heigth / 8,
            width: width,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                labelText: 'Resultats du traitement',
              ),
            ),
          ),
          CustomText(
            text: "Medicament Prescrit",
            color: Colors.grey,
            size: 20,
          ),
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: CustomText(
                text: "NOM DU MEDICAMENTS",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "COMPOSANT ACTIF",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "AUTORISER LA SUBSTITUTION",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "QTE",
                size: Responsive.isDesktop(context)
                    ? 12
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "DOSAGE/FREQUENCE",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "COMMENTAIRE",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(
                  label: CustomText(
                text: "ORDONANCE",
                size: Responsive.isDesktop(context)
                    ? 10
                    : Responsive.isTablet(context)
                        ? 10
                        : 8,
                weight: FontWeight.bold,
              )),
              DataColumn(label: Icon(Icons.menu, size: 15, color: Colors.grey)),
            ],
            rows: [
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
