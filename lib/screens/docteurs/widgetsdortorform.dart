import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

class widgetsdoctorform extends StatefulWidget {
  const widgetsdoctorform({Key? key}) : super(key: key);

  @override
  State<widgetsdoctorform> createState() => _widgetsdoctorformState();
}

class _widgetsdoctorformState extends State<widgetsdoctorform> {
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
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(0.100),
                  width: 250,
                  height: 800,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Adresse'),
                      SizedBox(
                        height: 220,
                      ),
                      Text('Lien vers un site web'),
                      SizedBox(
                        height: 24,
                      ),
                      Text('Reservation en ligne autorisee'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Reservation de visite a domicile autorisee'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Monter les frais'),
                      SizedBox(
                        height: 27,
                      ),
                      Text('Informations de base'),
                      SizedBox(
                        height: 33,
                      ),
                      Text('Telephone'),
                      SizedBox(
                        height: 34,
                      ),
                      Text('Mobile'),
                      SizedBox(
                        height: 35,
                      ),
                      Text('Couriel'),
                      SizedBox(
                        height: 35,
                      ),
                      Text('TVA/Numero fiscal'),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 600,
                    height: 800,
                    child: Container(
                      child: ListView(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.blueGrey)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        //<-- SEE HERE
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        //<-- SEE HERE
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1),
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
                                  width: 2,
                                ),
                                SizedBox(
                                  width: 198,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 199, 187, 187),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.blueGrey)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
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
                            height: 2,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.blueAccent,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.blueAccent,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.blueAccent,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 199, 187, 187),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
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
