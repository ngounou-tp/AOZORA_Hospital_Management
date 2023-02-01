import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/hospitalisation/hospit2.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:admin/screens/docteurs/widgetsdortorform.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'widgetsdortorform.dart';

int indexbutton = 0;

class Formulairedocreferent extends StatefulWidget {
  @override
  _Formulairedocreferent createState() => _Formulairedocreferent();
}

class _Formulairedocreferent extends State<Formulairedocreferent> {
  int currentIndex = 0;
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

  bool isChecked = false;
  bool isSelected = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return Container(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      color: background,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor:
              isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  TextButton(
                      onPressed: () {}, child: Text('Docteurs referent /')),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Nouveau',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('SAUVEGARDER'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('ANNULER'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.whatsapp,
                    ),
                    label: Text(
                      'WHATSAPP',
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.whatsapp,
                    ),
                    label: Text(
                      'HISTORIQUE DU CHAT',
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: width,
                  height: 480,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.traffic,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Rendez-vous',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(110, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.point_of_sale,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Facture',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(110, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.note_add,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'commandes',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(110, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.money,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Requisitions',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(120, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thermostat_auto,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'Delivrance d',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(120, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.local_hospital,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'SMS',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(150, 50)),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.query_builder,
                              color: Colors.grey,
                            ),
                            label: Text(
                              'annonces par sms',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(120, 50)),
                          ),
                          SizedBox(
                            // width: MediaQuery.of(context.size.width),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.note_alt,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'PLUS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.grey,
                              size: 80,
                            ),
                            label: Text(
                              ' ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(110, 90)),
                          ),
                        ]),
                        Container(
                          child: Row(
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
                              Text('Particulier'),
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
                              Text('Societe')
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 400,
                              height: 150,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  SizedBox(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'ex. Bandon Freeman',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.blueGrey)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 400,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
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
                                    height: 140,
                                  ),
                                  Text('TVA')
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 400,
                                      height: 400,
                                      child: Container(
                                        child: ListView(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
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
                                              width: 5,
                                            ),
                                            SizedBox(
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
                                                    width: 130,
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
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
                                                    width: 145,
                                                    child:
                                                        DropdownButtonFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          //<-- SEE HERE
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .grey,
                                                                  width: 1),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          //<-- SEE HERE
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .grey,
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
                                                          child:
                                                              Text(valueItem),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2,
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        filled: true,
                                                        fillColor:
                                                            Color.fromARGB(255,
                                                                199, 187, 187),
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
                                              height: 2,
                                            ),
                                            SizedBox(
                                              child: DropdownButtonFormField(
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
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(10.0),
                                    padding: const EdgeInsets.all(0.100),
                                    width: 200,
                                    height: 800,
                                    child: ListView(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Poste Occupee'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Telephone'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Mobile'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Code par SMS'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('OTP Whatsapp'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Courriel'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Site web'),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text('Titre'),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text('Langue'),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text('Etiquettes'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 400,
                                      height: 550,
                                      child: Container(
                                        child: ListView(
                                          children: [
                                            SizedBox(
                                              height: 40,
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
                                              width: 5,
                                            ),
                                            SizedBox(
                                              height: 40,
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
                                              height: 40,
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
                                              height: 40,
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
                                              height: 40,
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
                                            SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              height: 40,
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
                                              height: 40,
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
                                              height: 40,
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
                                              height: 40,
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
                                            SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              height: 40,
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
                                            SizedBox(
                                              height: 5,
                                            ),
                                            SizedBox(
                                              height: 40,
                                              child: DropdownButtonFormField(
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
                                              height: 40,
                                              child: DropdownButtonFormField(
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
                                              height: 40,
                                              child: DropdownButtonFormField(
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
                                                items: data.map((valueItem) {
                                                  return DropdownMenuItem(
                                                    value: valueItem,
                                                    child: Text(
                                                      valueItem,
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
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
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 1;
                                });
                              },
                              child: Text(
                                'CONTACTS & ADRESSES',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 1
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 2;
                                });
                              },
                              child: Text(
                                'INFOS SUR HOPITAL',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 2
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 3;
                                });
                              },
                              child: Text(
                                'VENTES & ACHATS',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 3
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 4;
                                });
                              },
                              child: Text(
                                'FACTURATION',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 4
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 5;
                                });
                              },
                              child: Text(
                                'NOTES INTERNES',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 5
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 6;
                                });
                              },
                              child: Text(
                                'COMMISSIONS D AFFAIRE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 6
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                //minimumSize: Size(120, 50)
                              ),
                            ),
                          ],
                        ),
                        indexbutton == 1
                            ? TextButton.icon(
                                onPressed: () {
                                  // showDialog(context: context, builder: builder)
                                },
                                icon: const Icon(Icons.add),
                                label: Text('Ajouter'),
                              )
                            // widgetsdoctorform()
                            : indexbutton == 2
                                ? SizedBox(
                                    child: Container(
                                      width: 900,
                                      height: 500,
                                      child: ListView(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      child: Text('Patient'),
                                                    ),
                                                    SizedBox(
                                                      width: 150,
                                                    ),
                                                    SizedBox(
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                            'Creer Patient'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
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
                                                    child: Text(
                                                        'est le medecin referent :'),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  SizedBox(
                                                    child: Checkbox(
                                                      value: isChecked,
                                                      activeColor:
                                                          Colors.blueAccent,
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
                                                child: Text(
                                                    '#Services ambulanciers'),
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
                                                      activeColor:
                                                          Colors.blueAccent,
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
                                                    child: Text(
                                                        'est recepteur de sang:'),
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  SizedBox(
                                                    child: Checkbox(
                                                      value: isChecked,
                                                      activeColor:
                                                          Colors.blueAccent,
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
                                          SizedBox(
                                            width: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : indexbutton == 3
                                    ? Container(
                                        margin: const EdgeInsets.all(10.0),
                                        padding: const EdgeInsets.all(0.100),
                                        width: 250,
                                        height: 800,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  child: ListView(
                                                    children: [
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text('Vente'),
                                                      SizedBox(
                                                        height: 220,
                                                      ),
                                                      Text('Vendeur'),
                                                      SizedBox(
                                                        height: 24,
                                                      ),
                                                      Text(
                                                          'Conditions de paiement'),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                          'Informations fiscales'),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text('Position fiscale'),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ))
                                    : indexbutton == 6
                                        ? SizedBox(
                                            child: Row(
                                              children: [
                                                Text('donner la commission'),
                                                Checkbox(
                                                  value: isChecked,
                                                  activeColor:
                                                      Colors.blueAccent,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        : SizedBox()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
