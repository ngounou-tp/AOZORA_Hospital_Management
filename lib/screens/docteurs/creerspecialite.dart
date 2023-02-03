import 'package:admin/color_constants.dart';
import 'package:admin/screens/docteurs/creerspecialite.dart';
import 'package:admin/screens/docteurs/specialitedocteur.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

int indexbutton = 1;
//int indexmenu = 1;
bool isChecked = false;

class Creerspecialite extends StatefulWidget {
  const Creerspecialite({Key? key}) : super(key: key);

  @override
  State<Creerspecialite> createState() => _Creerspecialite();
}

class _Creerspecialite extends State<Creerspecialite> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      //   backgroundColor: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Specialitedoc()),
                    );
                  },
                  child: Text(
                    'Specialite',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                '/  Nouveau',
                style: TextStyle(color: Colors.grey),
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                onPressed: () {},
                child: Text('SAUVEGARDER'),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, minimumSize: Size(80, 30)),
                onPressed: () {},
                child: Text(
                  'ANNULER',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
              width: width,
              height: heigth,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey,
                    child: SizedBox(
                      width: 700,
                      height: 350,
                      child: Container(
                        color: Colors.white,
                        height: 250,
                        width: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nom'),
                            SizedBox(
                              height: 3,
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
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
