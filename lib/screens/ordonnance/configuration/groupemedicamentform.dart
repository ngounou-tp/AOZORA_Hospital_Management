import 'package:admin/responsive.dart';
import 'package:admin/screens/ordonnance/ordonnanceAppbar.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

var field = 0;

class GroupeMedicamentForm extends StatefulWidget {
  GroupeMedicamentForm({Key? key}) : super(key: key);

  @override
  State<GroupeMedicamentForm> createState() => _GroupeMedicamentFormState();
}

class _GroupeMedicamentFormState extends State<GroupeMedicamentForm> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: ordonnanceAppBar(context, scaffoldKey),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: heigth / 6,
            color: Colors.white54,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: CustomText(
                                text: "Groupe de medicaments/ ",
                                size: Responsive.isDesktop(context)
                                    ? 22
                                    : Responsive.isTablet(context)
                                        ? 20
                                        : 14,
                                color: Colors.blue),
                          ),
                          CustomText(
                              text: "Nouveau",
                              size: Responsive.isDesktop(context)
                                  ? 22
                                  : Responsive.isTablet(context)
                                      ? 20
                                      : 14,
                              color: Colors.grey),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CustomText(
                                    text: "SAUVEGARDER",
                                    size: Responsive.isDesktop(context)
                                        ? 17
                                        : Responsive.isTablet(context)
                                            ? 15
                                            : 13,
                                    color: Colors.white),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CustomText(
                                    text: "ANNULER",
                                    size: Responsive.isDesktop(context)
                                        ? 17
                                        : Responsive.isTablet(context)
                                            ? 15
                                            : 13,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
                DataTable(
                  columns: <DataColumn>[
                    DataColumn(
                        label: CustomText(
                      text: "NOM_DU_MEDICAMENTS",
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
                    DataColumn(
                        label: Icon(Icons.menu, size: 15, color: Colors.grey)),
                  ],
                  rows: [
                    DataRow(
                      cells: <DataCell>[
                        DataCell(field == 0
                            ? ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    // update your data model here
                                    field = 1;
                                  });
                                },
                                child: CustomText(
                                    text: "Add a line",
                                    size: 13,
                                    color: Colors.purple))
                            : TextField()),
                        DataCell(
                            field == 0 ? Text('') : CustomCheckBox(name: "")),
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
                            : ElevatedButton(
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
            )),
          )
        ],
      )),
    );
  }
}

List mylist1 = [
  CustomField(name: "Nom"),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Docteur"),
  CustomDropDownField(
      defaultvalue: "default", dropdownitem: ["default"], fieldname: "Limite"),
  CustomDropDownField(
      defaultvalue: "default",
      dropdownitem: ["default"],
      fieldname: "Maladies"),
];
