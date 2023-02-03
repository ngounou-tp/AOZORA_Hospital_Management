import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

class widgetsdocreferent2 extends StatefulWidget {
  const widgetsdocreferent2({Key? key}) : super(key: key);

  @override
  State<widgetsdocreferent2> createState() => _widgetsdocreferent2();
}

class _widgetsdocreferent2 extends State<widgetsdocreferent2> {
  bool? isChecked = false;
  var valueChoose = 'choose';

  List data = [
    'choose',
    'Clavier',
    'Souris',
    'Flutter',
    'Fullstack',
    'Main',
    'Hello',
  ];
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Text('Creer Contacts'),
          Row(
            children: [
              Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = 1;
                    });
                  }),
              SizedBox(
                width: 5,
              ),
              Text('contacts'),
              SizedBox(
                width: 30,
              ),
              Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = 2;
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              Text('adresse de facturation'),
              Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = 3;
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              Text('Adresse de livraison'),
              Radio(
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = 4;
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              Text('Autre adresse'),
              Radio(
                  value: 5,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = 5;
                    });
                  }),
              SizedBox(
                width: 15,
              ),
              Text('Adresse personelle'),
            ],
          ),
          _value == 1
              ? Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(40.0),
                              padding: const EdgeInsets.all(0.0),
                              width: 150,
                              height: 130,
                              child: ListView(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('nom du contact'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('titre'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('poste occupe'),
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
                                height: 130,
                                child: Container(
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 1,
                                      ),
                                      SizedBox(
                                        height: 35,
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
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: 115,
                                        height: 35,
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
                                              child: Text(
                                                valueItem,
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        height: 35,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.blueGrey)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(40.0),
                              padding: const EdgeInsets.all(0.0),
                              width: 100,
                              height: 130,
                              child: ListView(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('couriel'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('telephone'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('mobile'),
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
                                height: 130,
                                child: Container(
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 1,
                                      ),
                                      SizedBox(
                                        height: 35,
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
                                        height: 5,
                                      ),
                                      SizedBox(
                                        height: 35,
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
                                        height: 5,
                                      ),
                                      SizedBox(
                                        height: 35,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.blueGrey)),
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
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text('notes'),
                        SizedBox(
                          width: 14,
                        ),
                        SizedBox(
                          height: 35,
                          width: 700,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('SAUVEGARDER ET FERMER'),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('SAUVEGARDER ET CREER'),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          child: TextButton(
                              onPressed: () {}, child: Text('Annuler')),
                        ),
                      ],
                    )
                  ],
                )
              : _value == 2
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(0.0),
                                  padding: const EdgeInsets.all(0.0),
                                  width: 100,
                                  height: 210,
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Nom du contact'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Adresse'),
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
                                    height: 210,
                                    child: Container(
                                      child: ListView(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  height: 35,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .blueGrey)),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 115,
                                                  height: 35,
                                                  child:
                                                      DropdownButtonFormField(
                                                    decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        //<-- SEE HERE
                                                        borderSide: BorderSide(
                                                            color: Colors.grey,
                                                            width: 1),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        //<-- SEE HERE
                                                        borderSide: BorderSide(
                                                            color: Colors.grey,
                                                            width: 1),
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
                                                    items:
                                                        data.map((valueItem) {
                                                      return DropdownMenuItem(
                                                        value: valueItem,
                                                        child: Text(
                                                          valueItem,
                                                        ),
                                                      );
                                                    }).toList(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  height: 35,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: Color.fromARGB(
                                                          255, 199, 187, 187),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .blueGrey)),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  //<-- SEE HERE
                                                  borderSide:
                                                      BorderSide(width: 1),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  //<-- SEE HERE
                                                  borderSide:
                                                      BorderSide(width: 1),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(40.0),
                                  padding: const EdgeInsets.all(0.0),
                                  width: 100,
                                  height: 210,
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('couriel'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('telephone'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('mobile'),
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
                                    height: 210,
                                    child: Container(
                                      child: ListView(
                                        children: [
                                          SizedBox(
                                            height: 1,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
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
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text('notes'),
                            SizedBox(
                              width: 14,
                            ),
                            SizedBox(
                              height: 35,
                              width: 700,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.blueGrey)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('SAUVEGARDER ET FERMER'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('SAUVEGARDER ET CREER'),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                              child: TextButton(
                                  onPressed: () {}, child: Text('Annuler')),
                            ),
                          ],
                        )
                      ],
                    )
                  : _value == 2
                      ? SizedBox(
                          child: Row(
                          children: [Text('num 2')],
                        ))
                      : SizedBox()
        ],
      ),
    );
  }
}
