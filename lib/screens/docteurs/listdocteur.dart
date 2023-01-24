import 'package:admin/color_constants.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

int indexbutton = 1;
bool isChecked = false;

class Listdocteur extends StatefulWidget {
  const Listdocteur({Key? key}) : super(key: key);

  @override
  State<Listdocteur> createState() => _ListdocteurState();
}

class _ListdocteurState extends State<Listdocteur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      color: background,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Listdoc'),
          ),
          //   backgroundColor: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 243, 238, 238),
                height: 120,
                width: 1500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Docteur',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 141, 135, 135),
                              ),
                            )),
                        Spacer(),
                        SizedBox(
                          width: 500,
                          height: 50,
                          child: TextFormField(
                            decoration:
                                InputDecoration(labelText: 'rechercher...'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // method to show the search bar
                          },
                          icon: const Icon(Icons.search),
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
                          onPressed: () {},
                          child: Text('CREER'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download,
                            color: Colors.grey,
                          ),
                          label: Text(
                            '',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(30, 50)),
                        ),
                        SizedBox(
                          width: 400,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.control_point,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Filtres',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: Size(100, 50)),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Regrouper par',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(80, 50)),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Favoris',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(80, 50)),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '1-1/1 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '<',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 40),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              '>',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 40),
                            )),
                        Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              indexbutton = 1;
                            });
                          },
                          icon: Icon(Icons.grid_4x4_rounded,
                              color:
                                  indexbutton == 1 ? Colors.blue : Colors.grey),
                          label: Text(
                            '',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(50, 50)),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              indexbutton = 2;
                            });
                          },
                          icon: Icon(
                            Icons.format_list_numbered,
                            color: indexbutton == 2 ? Colors.blue : Colors.grey,
                          ),
                          label: Text(
                            '',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(50, 50)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 10,
              ),
              indexbutton == 1
                  ? Container(
                      color: Color.fromARGB(255, 230, 236, 231),
                      width: 250,
                      height: 100,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Column(
                            children: [
                              Text('Ivan MAHI'),
                              Text('Code :'),
                              Text('Specialite:'),
                              Text('pas encore d' 'evaluation')
                            ],
                          )
                        ],
                      ),
                    )
                  : indexbutton == 2
                      ? DataTable(columns: [
                          DataColumn(
                            label: Checkbox(
                              value: isChecked,
                              activeColor: Colors.blueAccent,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                          DataColumn(
                              label: Text(
                            'Nom',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.grey,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'ID du Docteur',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Licence medicale',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Mobile',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Couriel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )),
                        ], rows: [
                          DataRow(cells: [
                            DataCell(
                              Checkbox(
                                value: isChecked,
                                activeColor: Colors.blueAccent,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            DataCell(Text('Ivan MAHI')),
                            DataCell(Text('DR_IM04')),
                            DataCell(Text('Chirugien')),
                            DataCell(Text('679345643')),
                            DataCell(Text('ivan@mkkd.fr')),
                          ])
                        ])
                      : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
