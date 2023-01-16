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
    // ignore: unused_local_variable
    String dropdownvalue = 'Item 1';
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.money, size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(
                                text: "INV: 0,00",
                                size: 25,
                                color: Colors.grey),
                            CustomText(
                                text: "DU: 0,00", size: 25, color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.file_copy_outlined,
                          size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "0", size: 25, color: Colors.grey),
                            CustomText(
                                text: "Documents",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.file_copy_outlined,
                          size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(
                                text: "Appercue de",
                                size: 25,
                                color: Colors.grey),
                            CustomText(
                                text: "Documents",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.medication_outlined,
                          size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "0", size: 25, color: Colors.grey),
                            CustomText(
                                text: "Traitements",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.vaccines_rounded,
                          size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "0", size: 25, color: Colors.grey),
                            CustomText(
                                text: "Rendez vous",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.edit, size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "0", size: 25, color: Colors.grey),
                            CustomText(
                                text: "Physiotherapie",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.remove_red_eye, size: 40, color: Colors.grey),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomText(text: "0", size: 25, color: Colors.grey),
                            CustomText(
                                text: "Ophtamologie",
                                size: 25,
                                color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: "Plus", size: 25, color: Colors.grey),
                      DropdownButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                          color: Colors.grey,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
