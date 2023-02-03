import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/docteurs/widgetdocreferent1.dart';
import 'package:admin/screens/docteurs/widgetdocreferent2.dart';
import 'package:admin/screens/docteurs/widgetdocreferent3.dart';
import 'package:admin/screens/docteurs/widgetdocreferent4.dart';
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
                  height: 530,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 20,
                          ),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.traffic,
                                  texte1: '0',
                                  texte2: 'Rendez-vous')),
                          // ElevatedButton.icon(
                          //   onPressed: () {},
                          //   icon: Icon(
                          //     Icons.traffic,
                          //     color: Colors.grey,
                          //   ),
                          //   label: Text(
                          //     'Rendez-vous',
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.w500,
                          //       color: Colors.grey,
                          //     ),
                          //   ),
                          //   style: ElevatedButton.styleFrom(
                          //       primary: Colors.white,
                          //       minimumSize: Size(110, 50)),
                          // ),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.point_of_sale,
                                  texte1: '0.00',
                                  texte2: 'Facture')),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.traffic,
                                  texte1: '0',
                                  texte2: 'Rendez-vous')),

                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.money,
                                  texte1: '0.00',
                                  texte2: 'Requisitions')),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.thermostat_auto,
                                  texte1: '0',
                                  texte2: 'Relivrance d')),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.local_hospital,
                                  texte1: '0',
                                  texte2: 'SMS')),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.query_builder,
                                  texte1: '0',
                                  texte2: 'Annonces par SMS')),
                          Costumbutton(
                              buttonstat: Buttonstat(
                                  icone: Icons.note_add,
                                  texte1: '0',
                                  texte2: 'PLUS')),
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
                              SizedBox(
                                width: 20,
                              ),
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
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 400,
                              height: 115,
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
                                  _value == 1
                                      ? SizedBox(
                                          width: 400,
                                          child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                //<-- SEE HERE
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
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
                                        )
                                      : SizedBox(
                                          height: 4,
                                        )
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
                                  _value == 1
                                      ? SizedBox(
                                          width: 150,
                                          child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                //<-- SEE HERE
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
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
                                        )
                                      : Text('  Adresse'),
                                  SizedBox(
                                    height: 190,
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
                                      height: 290,
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
                                    height: 500,
                                    child: ListView(
                                      children: [
                                        _value == 1
                                            ?
                                            //Text('Poste Occupe'),
                                            SizedBox(
                                                height: 20,
                                                child: Text('Poste occupe'),
                                              )
                                            : Text('Telephone'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Mobile'),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text('Code par SMS'),
                                        SizedBox(
                                          height: 55,
                                        ),
                                        Text('OTP Whatsapp'),
                                        SizedBox(
                                          height: 55,
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
                                      height: 520,
                                      child: Container(
                                        child: ListView(
                                          children: [
                                            _value == 1
                                                ? SizedBox(
                                                    height: 40,
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
                                                  )
                                                : SizedBox(
                                                    height: 40,
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
                                              height: 2,
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
                                              height: 2,
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 120,
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
                                              height: 2,
                                            ),
                                            Row(
                                              children: [
                                                TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.upcoming),
                                                    label:
                                                        Text('Envoyer un SMS')),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.phone_android),
                                                    label:
                                                        Text('Verifier l OTP')),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 40,
                                              width: 120,
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
                                            Row(
                                              children: [
                                                TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons.upcoming),
                                                    label:
                                                        Text('Envoyer un SMS')),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                TextButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        Icons.phone_android),
                                                    label:
                                                        Text('Verifier l OTP')),
                                              ],
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
                                                        color: Colors.white,
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
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return widgetsdocreferent2();
                                      });
                                },
                                icon: const Icon(Icons.add),
                                label: Text('Ajouter'),
                              )

                            // widgetsdocreferent2()
                            : indexbutton == 2
                                ? widgetsdocreferent4()
                                : indexbutton == 3
                                    ? widgetsdocreferent1()
                                    : indexbutton == 4
                                        ? widgetsdocreferent3()
                                        : indexbutton == 5
                                            ? Text('note interne...')
                                            : indexbutton == 6
                                                ? SizedBox(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                            'donner la commission'),
                                                        Checkbox(
                                                          value: isChecked,
                                                          activeColor:
                                                              Colors.blueAccent,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              isChecked =
                                                                  value!;
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
              Row(
                children: [
                  SizedBox(
                    width: 120,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Envoyer un message')),
                  TextButton(
                      onPressed: () {}, child: Text('Enregistrer une note')),
                  TextButton(
                      onPressed: () {}, child: Text('Planifer une activite')),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text('0')),
                  TextButton(onPressed: () {}, child: Text('Suivre')),
                  TextButton(onPressed: () {}, child: Text('0')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttonstat {
  final IconData icone;
  final String texte1;
  final String texte2;

  const Buttonstat({
    required this.icone,
    required this.texte1,
    required this.texte2,
  });
}

class Costumbutton extends StatelessWidget {
  const Costumbutton({Key? key, required this.buttonstat}) : super(key: key);
  // ignore: empty_constructor_bodies
  final Buttonstat buttonstat;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
        color: Color.fromARGB(255, 197, 153, 153),
        fontWeight: FontWeight.bold,
        fontSize: 20);
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      width: 150,
      height: 45,
      child: Row(
        children: [
          SizedBox(
            width: 2,
          ),
          Icon(buttonstat.icone),
          SizedBox(
            width: 3,
          ),
          Column(
            children: [
              Text(buttonstat.texte1),
              SizedBox(
                width: 4,
              ),
              Text(buttonstat.texte2),
            ],
          )
        ],
      ),
    );
  }
}
