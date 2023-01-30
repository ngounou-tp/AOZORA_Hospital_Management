import 'package:flutter/material.dart';

var tabindex1 = 0;
var tabindex2 = 0;
var tabindex3 = 0;
var tabindex4 = 0;
var tabindex5 = 0;

class FormCreation9 extends StatefulWidget {
  const FormCreation9({Key? key}) : super(key: key);

  @override
  State<FormCreation9> createState() => _FormCreation9State();
}

class _FormCreation9State extends State<FormCreation9> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'MEMBRE DE FAMILLE',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  ' RELATION',
                  style: TextStyle(fontStyle: FontStyle.italic),
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
    );
  }
}
