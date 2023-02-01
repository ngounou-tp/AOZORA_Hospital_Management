import 'package:admin/color_constants.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

int indexbutton = 1;
//int indexmenu = 1;
bool isChecked = false;

class Listingdocteur extends StatefulWidget {
  const Listingdocteur({Key? key}) : super(key: key);

  @override
  State<Listingdocteur> createState() => _Listingdocteur();
}

class _Listingdocteur extends State<Listingdocteur> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return Container(
      //color: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      //   backgroundColor: isLightMode ? AppTheme.nearlyWhite : AppTheme.nearlyBlack,

      child: Container(
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
                    decoration: InputDecoration(labelText: 'rechercher...'),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateDoctor()),
                    );
                  },
                  child: Text('CREER'),
                ),
                SizedBox(
                  width: 5,
                ),
                indexbutton == 2
                    ? ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            indexbutton = 2;
                          });
                        },
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
                          primary: Colors.white,
                        ),
                      )
                    : SizedBox(),
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
                      primary: Colors.white, minimumSize: Size(100, 50)),
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
                      color: indexbutton == 1 ? Colors.blue : Colors.grey),
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
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    indexbutton == 1
                        ? Container(
                            width: 1400,
                            height: 300,
                            color: Colors.white,
                            child: GridView.count(
                                childAspectRatio: 1.5,
                                crossAxisCount: 6,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                children: List.generate(
                                  alldata.length,
                                  (index) {
                                    return Affich(data: alldata[index]);
                                  },
                                )),
                          )
                        : indexbutton == 2
                            ? Container(
                                width: 1400,
                                height: 500,
                                child: DataTable(columns: [
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
                                ]),
                              )
                            : SizedBox(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Data {
  final IconData icon;
  final String code;
  final String nom;
  final String specialite;

  const Data(
      {required this.icon,
      required this.nom,
      required this.code,
      required this.specialite});
}

const List<Data> alldata = <Data>[
  Data(
      icon: Icons.add_alarm,
      nom: "Ivan MAHI",
      code: "DR_003H",
      specialite: "genaralisate"),
  Data(
      icon: Icons.add_alert,
      nom: "Fred LORD",
      code: "CH_040K",
      specialite: "chirugien"),
  Data(
      icon: Icons.u_turn_left,
      nom: "Fred LORD",
      code: "CH_040K",
      specialite: "chirugien")
];

class Affich extends StatelessWidget {
  const Affich({Key? key, required this.data}) : super(key: key);
  final Data data;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
        color: Color.fromARGB(255, 197, 153, 153),
        fontWeight: FontWeight.bold,
        fontSize: 20);
    return SizedBox(
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                SizedBox(height: 20),
                Icon(
                  data.icon,
                  size: 80,
                  color: textStyle.color,
                ),
              ],
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Text(
                  data.nom,
                  style: textStyle,
                ),
                Text(
                  data.code,
                  style: textStyle,
                ),
                Text(
                  data.specialite,
                  style: textStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
