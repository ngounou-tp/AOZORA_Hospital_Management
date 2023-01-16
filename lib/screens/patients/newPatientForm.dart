import 'package:admin/appbar_component/appbar_page.dart';
import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/desktoplayout.dart';
import 'package:admin/screens/patients/forms.dart/form1.dart';
import 'package:admin/screens/patients/forms.dart/form2.dart';
import 'package:admin/screens/patients/forms.dart/form3.dart';
import 'package:admin/screens/patients/forms.dart/form4.dart';
import 'package:admin/screens/patients/forms.dart/form5.dart';
import 'package:admin/screens/patients/forms.dart/form6.dart';
import 'package:admin/screens/patients/upPatientComponent3.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

int currentIndex = 1;

class NewPatientForm extends StatefulWidget {
  NewPatientForm({Key? key}) : super(key: key);

  @override
  State<NewPatientForm> createState() => _NewPatientFormState();
}

class _NewPatientFormState extends State<NewPatientForm> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(
        context,
        scaffoldKey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Scrollbar(
          thumbVisibility: true,
          interactive: true,
          child: SingleChildScrollView(
            child: Column(children: [
              UpSection3(),
              Row(
                children: [
                  CustomElevatedButton(
                      function: () {}, name: "CREER UNE FACTURE"),
                  SizedBox(
                    width: 4,
                  ),
                  CustomElevatedButton(
                      function: () {}, name: "PLANIFIER UNE VACCINATION"),
                  Spacer(),
                  if (!Responsive.isDesktop(context))
                    TextButton.icon(
                        label: CustomText(
                          text: "Modules",
                          color: primaryColor,
                          size: Responsive.isDesktop(context)
                              ? 25
                              : Responsive.isTablet(context)
                                  ? 15
                                  : 10,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: EdgeInsets.only(left: width / 2),
                                  child: Drawer(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: CustomText(
                                                text: "Modules",
                                                size: Responsive.isDesktop(
                                                        context)
                                                    ? 30
                                                    : Responsive.isTablet(
                                                            context)
                                                        ? 25
                                                        : 20,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Spacer(
                                              flex: 2,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: Icon(
                                                    Icons.close,
                                                    size: width / 30,
                                                    color: Colors.grey,
                                                  )),
                                            )
                                          ],
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ItemCreation(
                                                  name:
                                                      "Informations Principal",
                                                  function: () {
                                                    setState(() {
                                                      // update your data model here
                                                      currentIndex = 1;
                                                    });
                                                  }),
                                              ItemCreation(
                                                  name:
                                                      "Informations Generales",
                                                  function: () {
                                                    setState(() {
                                                      // update your data model here
                                                      currentIndex = 2;
                                                    });
                                                  }),
                                              ItemCreation(
                                                name: "Info sur l'hospital",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 3;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Evaluation Clinique",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 4;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Maladies",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 6;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Historique Clinique",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 7;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Apparence",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 8;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Chirugies",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 9;
                                                  });
                                                },
                                              ),
                                              ItemCreation(
                                                name: "Familles",
                                                function: () {
                                                  setState(() {
                                                    // update your data model here
                                                    currentIndex = 10;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }); //<-- SEE HERE
                        },
                        icon: Icon(Icons.menu_book_outlined,
                            size: width / 35, color: primaryColor))
                ],
              ),
              Responsive.isDesktop(context)
                  ? DeskTopLayout()
                  : currentIndex == 1
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FormCreation1(),
                        )
                      : currentIndex == 2
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FormCreation2(),
                            )
                          : currentIndex == 3
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FormCreation3(),
                                )
                              : currentIndex == 4
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FormCreation4(),
                                      ),
                                    )
                                  : currentIndex == 5
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FormCreation5(),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FormCreation6(),
                                        ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomElevatedButton(
                  name: "Enregistrer",
                  function: () {},
                ),
                CustomElevatedButton(
                  name: "Precedent",
                  function: () {
                    setState(() {
                      // update your data model here
                      currentIndex--;
                    });
                  },
                ),
                CustomElevatedButton(
                    name: "Suivant",
                    function: () {
                      setState(() {
                        // update your data model here
                        currentIndex++;
                      });
                    }),
              ])
            ]),
          ),
        ),
      ),
    );
  }
}

class ItemCreation extends StatefulWidget {
  final String name;
  final Function() function;
  const ItemCreation({Key? key, required this.name, required this.function})
      : super(key: key);

  @override
  State<ItemCreation> createState() => _ItemCreationState();
}

class _ItemCreationState extends State<ItemCreation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return TextButton(
      child: CustomText(
        text: widget.name,
        size: Responsive.isTablet(context) ? 20 : 15,
      ),
      onPressed: widget.function,
    );
  }
}
