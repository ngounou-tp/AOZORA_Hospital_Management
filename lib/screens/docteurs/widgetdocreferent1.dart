import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

class widgetsdocreferent1 extends StatefulWidget {
  const widgetsdocreferent1({Key? key}) : super(key: key);

  @override
  State<widgetsdocreferent1> createState() => _widgetsdocreferent1();
}

class _widgetsdocreferent1 extends State<widgetsdocreferent1> {
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
                  width: 100,
                  height: 500,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text('vente'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('vendeur'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('condition de paiement'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('liste des prix'),
                      SizedBox(
                        height: 25,
                      ),
                      Text('Information fiscale'),
                      SizedBox(
                        height: 15,
                      ),
                      Text('position fiscale'),
                      SizedBox(
                        height: 27,
                      ),
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
                    height: 500,
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
                  height: 500,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 1,
                      ),
                      Text('Achats'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('condition de paiement'),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Divers'),
                      SizedBox(
                        height: 25,
                      ),
                      Text('reference'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('site web'),
                      SizedBox(
                        height: 27,
                      ),
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
                    height: 500,
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
                            height: 75,
                          ),
                          SizedBox(
                            height: 35,
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.blueGrey)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
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
