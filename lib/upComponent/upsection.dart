import 'package:admin/responsive.dart';
import 'package:admin/upComponent/cardbutton.dart';
import 'package:admin/upComponent/customSearch.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class UpSection extends StatelessWidget {
  const UpSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController myController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 5.5,
      color: Colors.white54,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Mon Tableau de Bord",
                size: Responsive.isDesktop(context)
                    ? 25
                    : Responsive.isTablet(context)
                        ? 20
                        : 10,
                color: Colors.grey,
              )),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
