import 'package:admin/responsive.dart';
import 'package:admin/screens/traitements/traitement/traitement-appbar.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

var field = 0;

class ConfigurationForm extends StatefulWidget {
  ConfigurationForm({Key? key}) : super(key: key);

  @override
  State<ConfigurationForm> createState() => _ConfigurationFormState();
}

class _ConfigurationFormState extends State<ConfigurationForm> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: traitementAppBar(context, scaffoldKey),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              text: "Procedures du Group / ",
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
          width: width,
          margin: const EdgeInsets.fromLTRB(100, 10, 100, 0),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              color: Colors.white),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomText(
              text: "Nom",
              size: 16,
              color: Colors.black,
              weight: FontWeight.bold,
            ),
            Container(
              height: heigth / 8,
              width: width / 2,
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
            DataTable(
              columns: <DataColumn>[
                DataColumn(
                    label: CustomText(
                  text: "PROCCEDURE",
                  size: Responsive.isDesktop(context)
                      ? 15
                      : Responsive.isTablet(context)
                          ? 10
                          : 8,
                  weight: FontWeight.bold,
                )),
                DataColumn(
                    label: CustomText(
                  text: "DAYS TO ADD",
                  size: Responsive.isDesktop(context)
                      ? 15
                      : Responsive.isTablet(context)
                          ? 10
                          : 8,
                  weight: FontWeight.bold,
                )),
                DataColumn(
                    label: CustomText(
                  text: "PROCCEDURE TIME",
                  size: Responsive.isDesktop(context)
                      ? 15
                      : Responsive.isTablet(context)
                          ? 10
                          : 8,
                  weight: FontWeight.bold,
                )),
                DataColumn(
                    label: CustomText(
                  text: "PRIX",
                  size: Responsive.isDesktop(context)
                      ? 12
                      : Responsive.isTablet(context)
                          ? 10
                          : 8,
                  weight: FontWeight.bold,
                )),
                DataColumn(label: Text("")),
              ],
              rows: [
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      field == 0
                          ? ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  field = 2;
                                });
                              },
                              child: Text("Ajouter une ligne"))
                          : Container(
                              width: width / 3,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(),
                                ),
                              ),
                            ),
                    ),
                    DataCell(field == 0 ? Text("") : TextField()),
                    DataCell(field == 0 ? Text("") : Text("00:00")),
                    DataCell(field == 0 ? Text("") : Text("0,00")),
                    DataCell(field == 0
                        ? Text("")
                        : IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete,
                                color: Colors.red, size: 15))),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(field == 0
                        ? Text('')
                        : ElevatedButton(
                            onPressed: () {
                              setState(() {
                                field = 2;
                              });
                            },
                            child: Text("Ajouter une ligne"))),
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
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
