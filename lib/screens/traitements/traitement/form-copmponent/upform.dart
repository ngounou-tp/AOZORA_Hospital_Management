import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class UpTraitementContainer extends StatelessWidget {
  const UpTraitementContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
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
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: CustomText(
                          text: "Traitement / ",
                          size: Responsive.isDesktop(context)
                              ? 22
                              : Responsive.isTablet(context)
                                  ? 20
                                  : 14,
                          color: Colors.blue),
                    ),
                    CustomText(
                        text: "Nouveau",
                        size: Responsive.isDesktop(context)
                            ? 22
                            : Responsive.isTablet(context)
                                ? 20
                                : 14,
                        color: Colors.grey),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CustomText(
                              text: "SAUVEGARDER",
                              size: Responsive.isDesktop(context)
                                  ? 17
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                              color: Colors.white),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CustomText(
                              text: "ANNULER",
                              size: Responsive.isDesktop(context)
                                  ? 17
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                              color: Colors.white),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
