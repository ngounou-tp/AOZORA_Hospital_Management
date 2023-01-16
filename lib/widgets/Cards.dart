import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class MyCard1 extends StatelessWidget {
  final int num;
  const MyCard1({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 20
                      : 15,
              10,
              0),
          child: Row(
            children: [
              Icon(
                Icons.chair_rounded,
                size: width / 35,
                color: Colors.grey,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 25
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Patients",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 25
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              )
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Container(
            color: Colors.white,
            height: heigth / 12,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(children: [
                CustomText(
                  text: "voir details",
                  size: Responsive.isDesktop(context)
                      ? 25
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: darkgreenColor,
                ),
                Spacer(),
                Icon(Icons.directions, color: darkgreenColor, size: width / 30)
              ]),
            ),
          ),
        )
      ],
    );
  }
}

class MyCard2 extends StatelessWidget {
  final int num;
  const MyCard2({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 20
                      : 10,
              10,
              0),
          child: Row(
            children: [
              Icon(
                Icons.chair_rounded,
                size: width / 35,
                color: Colors.grey,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 18
                            : 15,
                  ),
                  CustomText(
                    text: "Nombre Total ",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 18
                            : 15,
                  ),
                  CustomText(
                    text: "De Patients",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 18
                            : 15,
                  )
                ],
              )
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Container(
            color: Colors.white,
            height: heigth / 14,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(children: [
                CustomText(
                  text: "voir details",
                  size: Responsive.isDesktop(context)
                      ? 22
                      : Responsive.isTablet(context)
                          ? 18
                          : 15,
                  color: darkgreenColor,
                ),
                Spacer(),
                Icon(Icons.directions, color: darkgreenColor, size: width / 30)
              ]),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}

class MyCard3 extends StatelessWidget {
  final int num1;
  final int num2;
  const MyCard3({Key? key, required this.num1, required this.num2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 25
                  : Responsive.isTablet(context)
                      ? 20
                      : 10,
              10,
              0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.medical_information_outlined,
                  size: width / 35, color: Colors.white),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num1.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "TotaL",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 15
                            : 13,
                  ),
                  CustomText(
                    text: "Physics",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 15
                            : 13,
                  )
                ],
              ),
              SizedBox(
                width: width / 50,
              ),
              Column(
                children: [
                  CustomText(
                    text: num2.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Ref.",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 15
                            : 13,
                  ),
                  CustomText(
                    text: "Medecins",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 20
                        : Responsive.isTablet(context)
                            ? 15
                            : 13,
                  )
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 2.0,
            width: width / 3,
            color: Colors.white,
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Container(
            height: heigth / 14,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomText(
                  text: "Docteurs",
                  size: Responsive.isDesktop(context)
                      ? 22
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: Colors.white,
                ),
              ]),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}

class MyCard4 extends StatelessWidget {
  final int num;
  const MyCard4({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 20
                      : 15,
              10,
              0),
          child: Row(
            children: [
              Icon(
                Icons.medication_liquid_outlined,
                size: width / 35,
                color: Colors.white,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Rendez-vous",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              )
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Container(
            color: Colors.white,
            height: heigth / 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                CustomText(
                  text: "voir details",
                  size: Responsive.isDesktop(context)
                      ? 22
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: darkgreenColor,
                ),
                Spacer(),
                Icon(Icons.directions, color: Colors.amber, size: width / 30)
              ]),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}

class MyCard5 extends StatelessWidget {
  final int num;
  const MyCard5({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 20
                      : 15,
              10,
              5),
          child: Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                size: width / 35,
                color: Colors.white,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Total des heures",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Container(
          color: Colors.white,
          height: heigth / 14,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Row(children: [
              CustomText(
                text: "voir details",
                size: Responsive.isDesktop(context)
                    ? 22
                    : Responsive.isTablet(context)
                        ? 20
                        : 15,
                color: Colors.blue,
              ),
              Spacer(),
              Icon(Icons.directions, color: Colors.blue, size: width / 30)
            ]),
          ),
        )
      ],
    );
  }
}

class MyCard6 extends StatelessWidget {
  final int num1;
  final int num2;
  const MyCard6({Key? key, required this.num1, required this.num2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 20
                  : Responsive.isTablet(context)
                      ? 20
                      : 15,
              10,
              0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.menu,
                size: width / 35,
                color: Colors.white,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num1.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Total",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  CustomText(
                    text: num2.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Montant",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 2.0,
            width: width / 3,
            color: Colors.white,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Container(
            height: heigth / 14,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomText(
                text: "Facture Ouvertes",
                size: Responsive.isDesktop(context)
                    ? 22
                    : Responsive.isTablet(context)
                        ? 20
                        : 15,
                color: Colors.white,
              ),
            ]),
          ),
        )
      ],
    );
  }
}

class MyCard7 extends StatelessWidget {
  final int num1;
  final int num2;
  const MyCard7({Key? key, required this.num1, required this.num2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                25.0,
                Responsive.isDesktop(context)
                    ? 40
                    : Responsive.isTablet(context)
                        ? 20
                        : 15,
                10,
                0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.medication_rounded,
                  size: width / 35,
                  color: Colors.white,
                ),
                Spacer(),
                Column(
                  children: [
                    CustomText(
                      text: num1.toString(),
                      color: Colors.white,
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 15,
                    ),
                    CustomText(
                      text: "Courant",
                      color: Colors.white,
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 15,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    CustomText(
                      text: num2.toString(),
                      color: Colors.white,
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 15,
                    ),
                    CustomText(
                      text: "Total",
                      color: Colors.white,
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 15,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 2.0,
            width: width / 3,
            color: Colors.white,
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
            child: Container(
              height: heigth / 14,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomText(
                  text: "Traitements",
                  size: Responsive.isDesktop(context)
                      ? 22
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: Colors.white,
                ),
              ]),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}

class MyCard8 extends StatelessWidget {
  final String time1;
  final String time2;
  const MyCard8({Key? key, required this.time1, required this.time2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 20
                  : Responsive.isTablet(context)
                      ? 15
                      : 10,
              10,
              0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.more_time_rounded,
                size: width / 35,
                color: Colors.white,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: time1,
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Temps",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "d'attente",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  CustomText(
                    text: time2,
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Cons",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Temps",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 2.0,
            width: width / 3,
            color: Colors.white,
          ),
        ),
        Spacer(),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0, 8, 0),
            child: Container(
              height: heigth / 14,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomText(
                  text: "Temps Moyen",
                  size: Responsive.isDesktop(context)
                      ? 22
                      : Responsive.isTablet(context)
                          ? 20
                          : 15,
                  color: Colors.white,
                ),
              ]),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}

class MyCard9 extends StatelessWidget {
  final int num1;
  final int num2;
  const MyCard9({Key? key, required this.num1, required this.num2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              30.0,
              Responsive.isDesktop(context)
                  ? 20
                  : Responsive.isTablet(context)
                      ? 15
                      : 10,
              10,
              0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.cake_outlined,
                size: width / 30,
                color: Colors.white,
              ),
              Spacer(),
              Column(
                children: [
                  CustomText(
                    text: num1.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Employe",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  CustomText(
                    text: num2.toString(),
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                  CustomText(
                    text: "Patient",
                    color: Colors.white,
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 20
                            : 15,
                  ),
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 2.0,
            width: width / 3,
            color: Colors.white,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            CustomText(
              text: "l'anniversaire aujourhui",
              size: Responsive.isDesktop(context)
                  ? 22
                  : Responsive.isTablet(context)
                      ? 20
                      : 15,
              color: Colors.white,
            ),
          ]),
        )
      ],
    );
  }
}
