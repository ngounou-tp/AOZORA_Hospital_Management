import 'package:admin/responsive.dart';
import 'package:admin/screens/sante-infirmier/infirmiere/Infimier-listing.dart';
import 'package:admin/screens/sante-infirmier/infirmiere/card-layout.dart';
import 'package:admin/screens/sante-infirmier/sante-appbar.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

var typeaffichage = 1;

class InfirmierPage extends StatefulWidget {
  InfirmierPage({Key? key}) : super(key: key);

  @override
  State<InfirmierPage> createState() => _InfirmierPageState();
}

class _InfirmierPageState extends State<InfirmierPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: santeAppBar(context, scaffoldKey),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: heigth / 6,
              color: Colors.white54,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                            text: "Infirmieres",
                            size: Responsive.isDesktop(context)
                                ? 22
                                : Responsive.isTablet(context)
                                    ? 20
                                    : 14,
                            color: Colors.grey),
                        if (typeaffichage == 2)
                          CardButton(icone: Icons.download),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            SizedBox(
                              width: width / 3,
                              child: TextField(),
                            ),
                            IconButton(
                              onPressed: () {
                                // method to show the search bar
                                showSearch(
                                    context: context,
                                    // delegate to customize the search bar
                                    delegate: CustomSearchDelegate());
                              },
                              icon: const Icon(Icons.search),
                            ),
                          ],
                        ),
                        onDoubleTap: () {},
                      ),
                      Row(
                        children: [
                          CardButton(icone: Icons.filter_1_rounded),
                          CardButton(icone: Icons.menu),
                          CardButton(icone: Icons.star),
                          CustomText(
                            text: "1-6/6",
                            size: 16,
                            color: Colors.grey,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back,
                                  size: 17, color: Colors.greenAccent)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward,
                                  size: 17, color: Colors.greenAccent)),
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(width / 500),
                              child: IconButton(
                                icon: Icon(Icons.menu_open,
                                    size: Responsive.isDesktop(context)
                                        ? 22
                                        : Responsive.isTablet(context)
                                            ? 18
                                            : 13,
                                    color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    // update your data model here
                                    typeaffichage = 1;
                                  });
                                },
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(width / 500),
                              child: IconButton(
                                icon: Icon(Icons.menu_sharp,
                                    size: Responsive.isDesktop(context)
                                        ? 22
                                        : Responsive.isTablet(context)
                                            ? 18
                                            : 13,
                                    color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    // update your data model here
                                    typeaffichage = 2;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: width / 5,
                  height: heigth,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.people,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: CustomText(
                                text: "Departement",
                                size: Responsive.isDesktop(context)
                                    ? 20
                                    : Responsive.isTablet(context)
                                        ? 14
                                        : 12,
                                weight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 7, 0, 5),
                              child: TextButton(
                                onPressed: () {},
                                child: CustomText(
                                  text: "Tous",
                                  size: Responsive.isDesktop(context)
                                      ? 16
                                      : Responsive.isTablet(context)
                                          ? 14
                                          : 12,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 7, 0, 7),
                              child: TextButton(
                                onPressed: () {},
                                child: CustomText(
                                  text: "Infirmiere",
                                  size: Responsive.isDesktop(context)
                                      ? 16
                                      : Responsive.isTablet(context)
                                          ? 14
                                          : 12,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Container(
                  width: 4 * width / 5,
                  height: heigth,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white),
                  child: Column(
                    children: [
                      typeaffichage == 1
                          ? Padding(
                              padding: const EdgeInsets.all(15),
                              child: CardView())
                          : InfirmierListing(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
