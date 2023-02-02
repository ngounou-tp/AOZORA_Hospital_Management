import 'package:admin/appbar_component/appbar_page2.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/Contacts/contact.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:admin/screens/patients/patien_list_header.dart';
import 'package:admin/screens/sante-infirmier/sante-layout.dart';
import 'package:admin/screens/traitements/traitement/traitement.dart';

import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

import '../color_constants.dart';

class MenuItems extends StatefulWidget {
  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  build(BuildContext context) {
    List mylist = [
      GestureDetector(
        child: Button(
          image: "assets/images/tableau-de-bord.png",
          text: "Tableau de bord",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/message.png",
          text: "Message",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/notification.png",
          text: "Notifications",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/calendrier.png",
          text: "Calendrier",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/chercher.png",
          text: "Recherche Global",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/contacts.png",
          text: "Contacts",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contacts()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/patient.png",
          text: "Patient",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PatientList()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/docteur.png",
          text: "Docteur",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/services.png",
          text: "Service",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/medicament.png",
          text: "Medicament",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/traitements.png",
          text: "Traitement",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Traitements()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/rendez-vous.png",
          text: "Rendez-vous",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/ordonnance.png",
          text: "Ordonnance",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/vaccination.png",
          text: "Vaccination",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/chirurgie.png",
          text: "Chirugie",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/hospitalisation.png",
          text: "Hospitalisation",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/reservation.png",
          text: "Reservation BO",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/offer.png",
          text: "Sante et infirmieres",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SanteInfirmier()),
          );
        },
      ),
      GestureDetector(
        child: Button(
          image: "assets/images/medicament.png",
          text: "Pharmacie",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
      ),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
    ];

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: customAppBar2(
          context,
          scaffoldKey,
        ),
        body: Center(
          child: SizedBox(
            width: Responsive.isDesktop(context)
                ? width / 1.5
                : Responsive.isTablet(context)
                    ? width / 1.5
                    : width,
            child: Card(
              color: inactive,
              elevation: 5,
              margin: EdgeInsets.all(20),
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView.count(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 5
                          : Responsive.isTablet(context)
                              ? 3
                              : 3,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      childAspectRatio: Responsive.isDesktop(context)
                          ? 1.45
                          : Responsive.isTablet(context)
                              ? 2
                              : 2,
                      children: List.generate(mylist.length, (index) {
                        return Center(
                          child: mylist[index],
                        );
                      })),
                ],
              )),
            ),
          ),
        ));
  }
}

class Button extends StatelessWidget {
  final String image;
  final String text;

  BuildContext? context;
  Button({Key? key, required this.image, required this.text, this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            image,
            height: Responsive.isDesktop(context)
                ? heigth / 11
                : Responsive.isTablet(context)
                    ? heigth / 10
                    : heigth / 15,
            width: Responsive.isDesktop(context)
                ? width / 8
                : Responsive.isTablet(context)
                    ? width / 6
                    : width / 3,
          ),
          CustomText(
            text: text,
            size: Responsive.isDesktop(context)
                ? 18
                : Responsive.isTablet(context)
                    ? 17
                    : 15,
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
