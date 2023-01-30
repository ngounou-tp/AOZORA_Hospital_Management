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
        ],
      ),
    );
  }
}
