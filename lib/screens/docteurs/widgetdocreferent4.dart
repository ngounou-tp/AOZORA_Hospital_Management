import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

class widgetsdocreferent4 extends StatefulWidget {
  const widgetsdocreferent4({Key? key}) : super(key: key);

  @override
  State<widgetsdocreferent4> createState() => _widgetsdocreferent4();
}

class _widgetsdocreferent4 extends State<widgetsdocreferent4> {
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
                  width: 230,
                  height: 300,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text('Patient'),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Text('Docteur referent'),
                      ),
                      SizedBox(
                          child: Row(
                        children: [
                          SizedBox(
                            child: Text('est le medecin referent :'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.blueAccent,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Text('#Services ambulanciers'),
                      ),
                      SizedBox(
                          child: Row(
                        children: [
                          SizedBox(
                            child: Text('chauffeur:'),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.blueAccent,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Text('Banque de sang'),
                      ),
                      SizedBox(
                          child: Row(
                        children: [
                          SizedBox(
                            child: Text('est recepteur de sang:'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.blueAccent,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(40.0),
                  padding: const EdgeInsets.all(0.0),
                  width: 300,
                  height: 300,
                  child: ListView(
                    children: [
                      SizedBox(
                        width: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('creer patient'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: 50,
                          child: Row(
                            children: [
                              SizedBox(
                                child: Text('nom de l hopital :'),
                              ),
                              SizedBox(
                                height: 35,
                                width: 150,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.blueGrey)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 85,
                      ),
                      SizedBox(
                        child: Text(''),
                      ),
                      SizedBox(
                          child: Row(
                        children: [
                          SizedBox(
                            child: Text('est donneur de sang:'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: isChecked,
                              activeColor: Colors.blueAccent,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
