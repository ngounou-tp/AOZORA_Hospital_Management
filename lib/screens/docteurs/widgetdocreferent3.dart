import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

class widgetsdocreferent3 extends StatefulWidget {
  const widgetsdocreferent3({Key? key}) : super(key: key);

  @override
  State<widgetsdocreferent3> createState() => _widgetsdocreferent3();
}

class _widgetsdocreferent3 extends State<widgetsdocreferent3> {
  bool? isChecked = false;
  var valueChoose = 'selectionner';

  List data = [
    'selectionner',
    'Clavier',
    'Souris',
    'Flutter',
    'Fullstack',
    'Main',
    'Hello',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        //  width: 500,
        //  height: 600,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.all(0.0),
                  width: 500,
                  height: 300,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text('Comptes bancaires'),
                      SizedBox(
                        height: 20,
                      ),
                      DataTable(columns: [
                        DataColumn(
                            label: Text(
                          'Banque',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'Numero de compte',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        )),
                      ], rows: [
                        DataRow(cells: [
                          DataCell(ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Ajouter une ligne',
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                          DataCell(Text('numero de compte')),
                        ])
                      ]),
                      SizedBox(
                        height: 90,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'voir les details des comptes',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                                fontSize: 18),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.all(0.0),
                  width: 150,
                  height: 300,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text('Ecritures comptables'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('compte client'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('compte fournisseur'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 300,
                    height: 300,
                    child: Container(
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: 100,
                            height: 35,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide: BorderSide(width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide: BorderSide(width: 1),
                                ),
                                filled: true,
                              ),
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose:
                                  newValue;
                                });
                              },
                              items: data.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 100,
                            height: 35,
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide: BorderSide(width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide: BorderSide(width: 1),
                                ),
                                filled: true,
                              ),
                              value: valueChoose,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose:
                                  newValue;
                                });
                              },
                              items: data.map((valueItem) {
                                return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
