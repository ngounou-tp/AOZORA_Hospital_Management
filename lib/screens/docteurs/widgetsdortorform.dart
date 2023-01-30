<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Elements extends StatefulWidget {
  const Elements({Key? key}) : super(key: key);

  @override
  State<Elements> createState() => _ElementsState();
}

class _ElementsState extends State<Elements> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Patient';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Patient',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Patient', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element2 extends StatefulWidget {
  const Element2({Key? key}) : super(key: key);

  @override
  State<Element2> createState() => _Element2State();
}

class _Element2State extends State<Element2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController();

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              "Date d'hospitaliosation",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: TextField(
                  controller:
                      dateController, //editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true, // when true user cannot edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(
                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(
                          formattedDate); //formatted date output using intl package =>  2022-07-04
                      //You can format date as per your need

                      setState(() {
                        dateController.text =
                            formattedDate; //set foratted date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                    //when click we have to show the datepicker
                  })),
        ],
      ),
    );
  }
}

class Element3 extends StatefulWidget {
  const Element3({Key? key}) : super(key: key);

  @override
  State<Element3> createState() => _Element3State();
}

class _Element3State extends State<Element3> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Docteur';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Docteur principal',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Docteur', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element4 extends StatefulWidget {
  const Element4({Key? key}) : super(key: key);

  @override
  State<Element4> createState() => _Element4State();
}

class _Element4State extends State<Element4> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Date de sortie',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: TextField(
                  controller:
                      dateController, //editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                      ),
                  readOnly: true, // when true user cannot edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      print(
                          pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(
                          pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(
                          formattedDate); //formatted date output using intl package =>  2022-07-04
                      //You can format date as per your need

                      setState(() {
                        dateController.text =
                            formattedDate; //set foratted date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                    //when click we have to show the datepicker
                  })),
        ],
      ),
    );
  }
}

class Element5 extends StatefulWidget {
  const Element5({Key? key}) : super(key: key);

  @override
  State<Element5> createState() => _Element5State();
}

class _Element5State extends State<Element5> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Docteur';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Docteur principals',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Docteur', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element6 extends StatefulWidget {
  const Element6({Key? key}) : super(key: key);

  @override
  State<Element6> createState() => _Element6State();
}

class _Element6State extends State<Element6> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dep';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Departement',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dep', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element7 extends StatefulWidget {
  const Element7({Key? key}) : super(key: key);

  @override
  State<Element7> createState() => _Element7State();
}

class _Element7State extends State<Element7> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Diseas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element8 extends StatefulWidget {
  const Element8({Key? key}) : super(key: key);

  @override
  State<Element8> createState() => _Element8State();
}

class _Element8State extends State<Element8> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Nom du parent (gardien) du patient',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element9 extends StatefulWidget {
  const Element9({Key? key}) : super(key: key);

  @override
  State<Element9> createState() => _Element9State();
}

class _Element9State extends State<Element9> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Phone du parent (gardien) du patient',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element10 extends StatefulWidget {
  const Element10({Key? key}) : super(key: key);

  @override
  State<Element10> createState() => _Element10State();
}

class _Element10State extends State<Element10> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Sans argent liquide',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: Checkbox(
                  //only check box
                  value: check1, //unchecked
                  onChanged: (bool? value) {
                    //value returned when checkbox is clicked
                    setState(() {
                      check1 = value;
                    });
                  })),
        ],
      ),
    );
  }
}

class Element11 extends StatefulWidget {
  const Element11({Key? key}) : super(key: key);

  @override
  State<Element11> createState() => _Element11State();
}

class _Element11State extends State<Element11> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Forfait',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element12 extends StatefulWidget {
  const Element12({Key? key}) : super(key: key);

  @override
  State<Element12> createState() => _Element12State();
}

class _Element12State extends State<Element12> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Docteur référent',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element13 extends StatefulWidget {
  const Element13({Key? key}) : super(key: key);

  @override
  State<Element13> createState() => _Element13State();
}

class _Element13State extends State<Element13> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Exemption de facture',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: Checkbox(
                  //only check box
                  value: check1, //unchecked
                  onChanged: (bool? value) {
                    //value returned when checkbox is clicked
                    setState(() {
                      check1 = value;
                    });
                  })),
        ],
      ),
    );
  }
}

class Element14 extends StatefulWidget {
  const Element14({Key? key}) : super(key: key);

  @override
  State<Element14> createState() => _Element14State();
}

class _Element14State extends State<Element14> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Salle/Chambre',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element15 extends StatefulWidget {
  const Element15({Key? key}) : super(key: key);

  @override
  State<Element15> createState() => _Element15State();
}

class _Element15State extends State<Element15> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Lit No.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}

class Element16 extends StatefulWidget {
  const Element16({Key? key}) : super(key: key);

  @override
  State<Element16> createState() => _Element16State();
}

class _Element16State extends State<Element16> {
  @override
  Widget build(BuildContext context) {
    var dropdownValue = 'Dis';
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 80,
            width: 200,
            child: Text(
              'Type d’ Admission',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
              height: 80,
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                  ),
                  filled: true,
                ),
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Dis', 'Cat', 'Tiger', 'Lion']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                }).toList(),
              )),
=======
import 'package:admin/color_constants.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Doctorform extends StatefulWidget {
  @override
  _DoctorformState createState() => _DoctorformState();
}

class _DoctorformState extends State<Doctorform> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;

    int buttonnumbr = 0;
    bool isChecked = false;
    return Container(
      //  width: 500,
      //  height: 600,
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(0.100),
                  width: 200,
                  height: 450,
                  child: ListView(
                    children: [
                      Text('Adresse'),
                      SizedBox(
                        height: 40,
                      ),
                      Text('Lien vers un site'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Reservation en ligne autorisee'),
                      SizedBox(
                        height: 40,
                      ),
                      Text('Reservation de la visite a domicile autorisee'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Montrer les frais'),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Informations de base'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                  width: 300,
                  height: 450,
                  child: Container(
                    child: ListView(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Colors.blueGrey)),
                          ),
                        ),
                        DropDownTextField(
                          dropDownList: [],
                        ),
                        DropDownTextField(
                          dropDownList: [],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 199, 187, 187),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: Colors.blueGrey)),
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
                        DropDownTextField(
                          dropDownList: [],
                        ),
                        DropDownTextField(
                          dropDownList: [],
                        ),
                      ],
                    ),
                  )),
            ],
          )
>>>>>>> ngounou
        ],
      ),
    );
  }
}
