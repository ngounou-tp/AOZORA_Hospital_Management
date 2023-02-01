import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/hospitalisation/hospit2.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:admin/screens/docteurs/widgetsdortorform.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'widgetsdortorform.dart';

int indexbutton = 0;

class CreateDoctor extends StatefulWidget {
  @override
  _CreateDoctorState createState() => _CreateDoctorState();
}

class _CreateDoctorState extends State<CreateDoctor> {
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
                  TextButton(onPressed: () {}, child: Text('Docteur /')),
                  TextButton(onPressed: () {}, child: Text('Nouveau')),
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
              Center(
                child: Container(
                  width: width,
                  height: 400,
                  margin: const EdgeInsets.all(10.100),
                  padding: const EdgeInsets.all(2.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Responsive.isDesktop(context)
                            ? Row(children: [
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.traffic,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Traitements',
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
                                    Icons.note_add,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Ordonance',
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
                                    'Commissions',
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
                                    'Chirurgie',
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
                                    'Hospitalisation',
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
                                    'Demandes',
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
                                      'Resultats',
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
                              ])
                            : Responsive.isTablet(context)
                                ? Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.traffic,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Traitements',
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
                                              Icons.note_add,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Ordonance',
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
                                              'Commissions',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white,
                                                minimumSize: Size(120, 50)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.thermostat_auto,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Chirurgie',
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
                                              'Hospitalisation',
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
                                              'Demandes',
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
                                              Icons.note_alt,
                                              color: Colors.grey,
                                            ),
                                            label: Text(
                                              'Resultats',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white,
                                                minimumSize: Size(120, 50)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
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
                                        ],
                                      )
                                    ],
                                  )
                                : Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Nom',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 700,
                                              height: 40,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Nom du Docteur',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .grey)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                'Education',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 400,
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'ex.medecin generaliste',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.grey)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
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
                                          Text(
                                              'ID du Docteur / Licence medicale'),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text('Suivi de consomation'),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Service de suivi'),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                              'Duree de consultation par defaut'),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text('Chirurgien principal'),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Specialite'),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text('departement'),
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
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
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
                                            TextFormField(
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
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 1;
                                });
                              },
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'INFORMATIONS GENERALES',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 1
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 2;
                                });
                              },
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'INFOS PERSONELLES',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 2
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 3;
                                });
                              },
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'COMMISSIONS D' '"AFFAIRES',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 3
                                        ? Colors.blue
                                        : Colors.grey),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            )
                          ],
                        ),
                        indexbutton == 1
                            ? widgetsdoctorform()
                            : indexbutton == 2
                                ? SizedBox(
                                    child: Column(children: [
                                      Text('signature'),
                                      SizedBox(
                                        width: 500,
                                        height: 500,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.blueGrey)),
                                          ),
                                        ),
                                      )
                                    ]),
                                  )
                                : indexbutton == 3
                                    ? SizedBox(
                                        child: Row(
                                          children: [
                                            Text('donner la commission'),
                                            Checkbox(
                                              value: isChecked,
                                              activeColor: Colors.blueAccent,
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
