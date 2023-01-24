import 'package:admin/appbar_component/appbar_page2.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/patien_list_header.dart';

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
          image: "assets/images/man.png",
          text: "my table",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PatientList()),
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
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
      Button(image: "assets/images/man.png", text: "my table"),
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
                ? 25
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
