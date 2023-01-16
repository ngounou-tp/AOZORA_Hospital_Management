import 'package:admin/responsive.dart';
import 'package:admin/screens/patients/newPatientForm.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class UpSection2 extends StatelessWidget {
  const UpSection2({
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
                      text: "Mon Tableau de Bord",
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 14,
                      color: Colors.blue,
                    ),
                  ),
                  CustomText(
                      text: "/Patient",
                      size: Responsive.isDesktop(context)
                          ? 22
                          : Responsive.isTablet(context)
                              ? 20
                              : 14,
                      color: Colors.grey)
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPatientForm()),
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
          Spacer(),
          Column(
            children: [
              GestureDetector(
                child: Row(
                  children: [
                    SizedBox(
                      width: width / 3,
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
