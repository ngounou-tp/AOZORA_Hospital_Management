import 'package:admin/responsive.dart';
import 'package:admin/screens/Contacts/configuration/etiquette/etiquette-form.dart';
import 'package:admin/screens/Contacts/contact-appbar.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class EtiquetteContact extends StatelessWidget {
  EtiquetteContact({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: contactAppBar(context, scaffoldKey),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        text: "Etiquettes de contact",
                        size: Responsive.isDesktop(context)
                            ? 22
                            : Responsive.isTablet(context)
                                ? 20
                                : 14,
                        color: Colors.grey),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EtiquetteForm()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CustomText(
                                  text: "Creer",
                                  size: Responsive.isDesktop(context)
                                      ? 22
                                      : Responsive.isTablet(context)
                                          ? 18
                                          : 13,
                                  color: Colors.white),
                            )),
                      ],
                    ),
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
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
