import 'package:admin/color_constants.dart';
<<<<<<< HEAD
import 'package:admin/screens/hospitalisation/hospit2.dart';
=======
>>>>>>> ngounou
import 'package:admin/utils/app_theme.dart';
import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:admin/screens/docteurs/widgetsdortorform.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
<<<<<<< HEAD
import 'widgetdoctor.dart';
=======
>>>>>>> ngounou

class Doctor extends StatefulWidget {
  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;

    bool isChecked = false;
<<<<<<< HEAD
    int indexbutton = 0;
=======
>>>>>>> ngounou
    return Container(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      color: background,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Docteur'),
          ),
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
<<<<<<< HEAD
                  width: 1250,
=======
                  width: 1200,
>>>>>>> ngounou
                  height: 400,
                  margin: const EdgeInsets.all(10.100),
                  padding: const EdgeInsets.all(2.0),
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
                        ]),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Nom',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 700,
                                    height: 40,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Nom du Docteur',
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
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
                                            TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
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
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                            ),
                            ElevatedButton.icon(
<<<<<<< HEAD
                              onPressed: () {
                                // Navigator.of(context).push(
                                //  MaterialPageRoute(
                                //    builder: (context) => Doctorform(),
                                // ),
                                // );
                              },
=======
                              onPressed: () {},
>>>>>>> ngounou
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'INFORMATIONS GENERALES',
                                style: TextStyle(
<<<<<<< HEAD
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 1
                                        ? Colors.blue
                                        : Colors.grey),
=======
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
>>>>>>> ngounou
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            ),
<<<<<<< HEAD
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  indexbutton = 2;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.all(20)),
                                  textStyle: MaterialStateProperty.all(
                                      TextStyle(fontSize: 15))),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'CHECKLIST',
                                    style: TextStyle(
                                        color: indexbutton == 2
                                            ? Colors.blue
                                            : Colors.grey),
                                  ),
                                ],
                              ),
                            ),
=======
>>>>>>> ngounou
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'INFOS PERSONELLES',
                                style: TextStyle(
<<<<<<< HEAD
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 7
                                        ? Colors.blue
                                        : Colors.grey),
=======
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
>>>>>>> ngounou
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.traffic,
                                color: Colors.grey,
                              ),
                              label: Text(
                                'COMMISSIONS D' '"AFFAIRES',
                                style: TextStyle(
<<<<<<< HEAD
                                    fontWeight: FontWeight.w500,
                                    color: indexbutton == 1
                                        ? Colors.blue
                                        : Colors.grey),
=======
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
>>>>>>> ngounou
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  minimumSize: Size(120, 50)),
                            )
                          ],
<<<<<<< HEAD
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 10,
                          child: Column(children: [
                            //indexbutton == 0
                            // ? InformationGeneral() :

                            // indexbutton==1 ? CheckList() :

                            indexbutton == 2
                                ? EvaluationClinic()
                                :

                                // indexbutton==3 ?  DetailJuridique() :

                                SizedBox()
                          ]),
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
                                          Text('Adresse'),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text('Lien vers un site web'),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                              'Reservation en ligne autorisee'),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                              'Reservation de visite a domicile autorisee'),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text('Montrer les frais'),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text('Informations de base'),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text('Telephone'),
                                          Text('Mobile'),
                                          Text('Couriel'),
                                          Text('TVA/Numero fiscal'),
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
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            width: 1,
                                                            color: Colors
                                                                .blueGrey)),
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
                                            Checkbox(
                                              value: isChecked,
                                              activeColor: Colors.blueAccent,
                                              onChanged: (value) {
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
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
                                          ],
                                        ),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
=======
                        )
>>>>>>> ngounou
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
<<<<<<< HEAD
                    width: 120,
=======
                    width: 100,
>>>>>>> ngounou
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Envoyer un message')),
                  TextButton(
                      onPressed: () {}, child: Text('Enregistrer une note')),
                  TextButton(
<<<<<<< HEAD
                      onPressed: () {}, child: Text('Planifer une activite')),
=======
                    child: Icon(Icons.add_alarm),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  TextButton(
                      onPressed: () {}, child: Text('Enregistrer une note')),
>>>>>>> ngounou
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
