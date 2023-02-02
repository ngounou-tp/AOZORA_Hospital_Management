import 'package:admin/responsive.dart';
import 'package:admin/widgets/customformfields.dart';
import 'package:flutter/material.dart';

class AutresInfos extends StatelessWidget {
  const AutresInfos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    var mylist1 = [
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Statut de la maladie"),
      CustomCheckBox2(name: "Maladie Allergique"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Severite"),
      CustomCheckBox2(name: "Avertissement de grossese/allaitemet"),
      MyCalenderField(name: "Date de gueison"),
      CustomCheckBox2(name: "Maladie Infectuese"),
      CustomDropDownField(
          defaultvalue: "default",
          dropdownitem: ["default"],
          fieldname: "Soutaite des parent"),
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width,
              child: GridView.count(
                  crossAxisCount: Responsive.isDesktop(context)
                      ? 2
                      : Responsive.isTablet(context)
                          ? 2
                          : 1,
                  mainAxisSpacing: Responsive.isDesktop(context) ? 20 : 10,
                  crossAxisSpacing: Responsive.isDesktop(context) ? 0 : 10,
                  childAspectRatio: Responsive.isDesktop(context)
                      ? 11
                      : Responsive.isTablet(context)
                          ? 11
                          : 10,
                  shrinkWrap: true,
                  children: List.generate(mylist1.length, (index) {
                    return Center(
                      child: mylist1[index],
                    );
                  })),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: heigth / 8,
              width: width / 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
