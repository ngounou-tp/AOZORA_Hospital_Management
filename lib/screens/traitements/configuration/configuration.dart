import 'package:admin/responsive.dart';
import 'package:admin/screens/traitements/configuration/configuration-form.dart';
import 'package:admin/screens/traitements/traitement/traitement-appbar.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

var typeaffichage = 1;

class Configuration extends StatefulWidget {
  Configuration({Key? key}) : super(key: key);

  @override
  State<Configuration> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: traitementAppBar(context, scaffoldKey),
      body: Column(
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
                          text: "Procedures Group",
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
                                      builder: (context) =>
                                          ConfigurationForm()),
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
                          if (typeaffichage == 2)
                            CardButton(icone: Icons.download),
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
          typeaffichage == 1
              ? Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(),
                )
              : Container()
        ],
      ),
    );
  }
}
