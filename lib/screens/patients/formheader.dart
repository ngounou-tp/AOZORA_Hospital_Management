import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatefulWidget {
  const FormHeader({Key? key}) : super(key: key);

  @override
  State<FormHeader> createState() => _FormHeaderState();
}

class _FormHeaderState extends State<FormHeader> {
  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: GridView.count(
              crossAxisCount: Responsive.isDesktop(context)
                  ? 5
                  : Responsive.isTablet(context)
                      ? 4
                      : 3,
              mainAxisSpacing: 0,
              crossAxisSpacing: 2,
              childAspectRatio: 3,
              shrinkWrap: true,
              children: List.generate(mylist.length, (index) {
                return Center(
                  child: mylist[index],
                );
              })),
        ),
      ],
    );
  }
}

class Con6 extends StatefulWidget {
  const Con6({Key? key}) : super(key: key);

  @override
  State<Con6> createState() => _Con6State();
}

class _Con6State extends State<Con6> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "Plus",
                  size: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 14
                          : 10,
                  color: Colors.grey),
              DropdownButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: width / 30,
                  color: Colors.grey,
                ),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: dropdownvalue,
                    child: CustomText(
                      text: dropdownvalue,
                      size: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 14
                              : 10,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              )
            ],
          ),
        ));
  }
}

class Con5 extends StatelessWidget {
  const Con5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.remove_red_eye, size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "0",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "Ophtamologie",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con4 extends StatelessWidget {
  const Con4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.medication_outlined,
                  size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "0",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "Traitements",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con8 extends StatelessWidget {
  const Con8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.edit, size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "0",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 16
                                : 14,
                        color: Colors.grey),
                    CustomText(
                        text: "Physiotherapie",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con7 extends StatelessWidget {
  const Con7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.vaccines_rounded,
                  size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "0",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "Rendez vous",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con3 extends StatelessWidget {
  const Con3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.file_copy_outlined,
                  size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "Appercue de",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "Documents",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con2 extends StatelessWidget {
  const Con2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.file_copy_outlined,
                  size: width / 40, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "0",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "Documents",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Con1 extends StatelessWidget {
  const Con1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return OutlinedButton(
        onPressed: () {},
        child: Container(
          height: heigth / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.money, size: width / 30, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                        text: "INV: 0,00",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                    CustomText(
                        text: "DU: 0,00",
                        size: Responsive.isDesktop(context)
                            ? 18
                            : Responsive.isTablet(context)
                                ? 14
                                : 10,
                        color: Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

final List mylist = [
  Con1(),
  Con2(),
  Con3(),
  Con4(),
  Con5(),
  Con7(),
  Con8(),
  Con6()
];
