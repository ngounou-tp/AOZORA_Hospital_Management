import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/newPatientForm.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class UpSection3 extends StatelessWidget {
  const UpSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    TextEditingController myController = TextEditingController();
    return Container(
      height: heigth / 5,
      color: Colors.white54,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: CustomText(
                      text: "Mon Tableau de Bord/Patient",
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 18
                              : 11,
                      color: Colors.blue,
                    ),
                  ),
                  CustomText(
                    text: "/Creer",
                    size: Responsive.isDesktop(context)
                        ? 22
                        : Responsive.isTablet(context)
                            ? 18
                            : 11,
                    color: Colors.grey,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPatientForm()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CustomText(
                              text: "SAUVEGARDER",
                              size: Responsive.isDesktop(context)
                                  ? 22
                                  : Responsive.isTablet(context)
                                      ? 18
                                      : 11,
                              color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPatientForm()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CustomText(
                              text: "ANNULER",
                              size: Responsive.isDesktop(context)
                                  ? 22
                                  : Responsive.isTablet(context)
                                      ? 18
                                      : 11,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    SizedBox(
                      width: width / 4,
                      child: TextField(
                        controller: myController,
                      ),
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
    );
  }
}
