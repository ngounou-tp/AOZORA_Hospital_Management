import 'package:admin/color_constants.dart';
import 'package:admin/screens/docteurs/creerdiplome.dart';
import 'package:admin/screens/docteurs/creerspecialite.dart';
import 'package:admin/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'doctorpage.dart';

int indexbutton = 1;
//int indexmenu = 1;
bool isChecked = false;

class Diplomedocteur extends StatefulWidget {
  const Diplomedocteur({Key? key}) : super(key: key);

  @override
  State<Diplomedocteur> createState() => _Diplomedocteur();
}

class _Diplomedocteur extends State<Diplomedocteur> {
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
                      'Diplome du docteur',
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
                      MaterialPageRoute(builder: (context) => Creerdiplome()),
                    );
                  },
                  child: Text('CREER'),
                ),
                SizedBox(
                  width: 5,
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
                Spacer(),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
