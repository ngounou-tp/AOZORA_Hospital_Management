import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';

import 'package:flutter/material.dart';

var field = 0;

class LigneOrdonance extends StatefulWidget {
  const LigneOrdonance({Key? key}) : super(key: key);

  @override
  State<LigneOrdonance> createState() => _LigneOrdonanceState();
}

class _LigneOrdonanceState extends State<LigneOrdonance> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomField2(name: "KIT"),
        DataTable(
          columns: <DataColumn>[
            DataColumn(
                label: CustomText(
              text: "MEDICAMENTS",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "NOM",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "COMPOSANT_ACTIF",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "AUTORISER_LA_SUBSTITUTION",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "DOSAGE/FREQUENCE",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "QTE_DOSE",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "UNITE_DE_DOSAGE",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "QTE_PAR_JOURS",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "JOURS",
              size: 9,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "QTE_TOTALE",
              size: Responsive.isDesktop(context)
                  ? 9
                  : Responsive.isTablet(context)
                      ? 10
                      : 8,
              weight: FontWeight.bold,
            )),
            DataColumn(
                label: CustomText(
              text: "COMMENTAITES",
              size: Responsive.isDesktop(context)
                  ? 9
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
                DataCell(field == 0
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 1;
                          });
                        },
                        child: CustomText(
                            text: "Add a line", size: 13, color: Colors.purple))
                    : TextField()),
                DataCell(field == 0
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 2;
                          });
                        },
                        child: CustomText(
                            text: "Add a section",
                            size: 13,
                            color: Colors.purple))
                    : TextField()),
                DataCell(field == 0
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 3;
                          });
                        },
                        child: CustomText(
                            text: "Add a note", size: 13, color: Colors.purple))
                    : TextField()),
                DataCell(field == 0 ? Text('') : CustomCheckBox(name: "")),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0 ? Text('') : TextField()),
                DataCell(field == 0
                    ? Text("")
                    : Icon(Icons.delete, size: 15, color: Colors.red)),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(field == 0
                    ? Text('')
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 1;
                          });
                        },
                        child: CustomText(
                            text: "Add a line",
                            size: 13,
                            color: Colors.purple))),
                DataCell(field == 0
                    ? Text('')
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 1;
                          });
                        },
                        child: CustomText(
                            text: "Add a section",
                            size: 13,
                            color: Colors.purple))),
                DataCell(field == 0
                    ? Text('')
                    : TextButton(
                        onPressed: () {
                          setState(() {
                            // update your data model here
                            field = 1;
                          });
                        },
                        child: CustomText(
                            text: "Add a note",
                            size: 13,
                            color: Colors.purple))),
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
              ],
            ),
          ],
        ),
      ],
    );
  }
}
