import 'package:admin/color_constants.dart';
import 'package:admin/screens/docteurs/docteurreferent.dart';
import 'package:admin/screens/docteurs/specialitedocteur.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';
import 'listingdocteur.dart';

int indexbutton = 1;
int indexmenu = 1;
bool isChecked = false;
List data = [
  'selectionner',
  'Clavier',
  'Souris',
  'Flutter',
  'Fullstack',
  'Main',
  'Hello',
];

class Acceuildocteur extends StatefulWidget {
  const Acceuildocteur({Key? key}) : super(key: key);

  @override
  State<Acceuildocteur> createState() => _AcceuildocteurState();
}

class _AcceuildocteurState extends State<Acceuildocteur> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    const List<String> choices = <String>[
      "Item 1",
      "Item 2",
      "Item 3",
    ];

    return Container(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      color: background,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    'Docteur',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          indexmenu = 1;
                        });
                      },
                      child: Text('Docteur',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          indexmenu = 2;
                        });
                      },
                      child: Text('Docteur referent',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  PopupMenuButton(
                      offset: Offset(0, 45), // SET THE (X,Y) POSITION

                      child: Text('Configuration'),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            enabled: false, // DISABLED THIS ITEM
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        indexmenu = 3;
                                      });
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text('Specialite'))),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      indexmenu = 4;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text('Diplome du docteur'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ];
                      }),
                ],
              ),
            ),
          ),

          //   backgroundColor: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              indexmenu == 1
                  ? Listingdocteur()
                  : indexmenu == 2
                      ? Docteurreferent()
                      : indexmenu == 3
                          ? Specialitedoc()
                          : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
