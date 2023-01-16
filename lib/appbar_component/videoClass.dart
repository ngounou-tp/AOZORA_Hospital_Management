import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

Widget videoform(BuildContext context) {
  return new AlertDialog(
    backgroundColor: Colors.white,
    title: Row(
      children: [
        CustomText(
          text: "Appel Video",
          size: Responsive.isDesktop(context)
              ? 30
              : Responsive.isTablet(context)
                  ? 25
                  : 20,
          color: Colors.blue,
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.close,
            color: Colors.blue,
            size: Responsive.isDesktop(context)
                ? 35
                : Responsive.isTablet(context)
                    ? 25
                    : 15,
          ),
        ),
      ],
    ),
    content: Mywidget(),
  );
}

class Mywidget extends StatefulWidget {
  const Mywidget({
    Key? key,
  }) : super(key: key);

  @override
  State<Mywidget> createState() => _MywidgetState();
}

class _MywidgetState extends State<Mywidget> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        // Get available height and width of the build area of this widget. Make a choice depending on the size.
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;
        final formKey = GlobalKey<FormState>();

        var dropdownValue = "Dog";

        return Container(
          height: height,
          width: width / 1.5,
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Form(
                key: formKey,
                child: Scrollbar(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: height / 10,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              text: "Sujet de reunion",
                              color: Colors.blue,
                              size: Responsive.isDesktop(context)
                                  ? 20
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                            ),
                            SizedBox(
                                height: height / 9,
                                width: width / 4,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: height / 10,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              text: "Code de reunion",
                              color: Colors.blue,
                              size: Responsive.isDesktop(context)
                                  ? 20
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                            ),
                            SizedBox(
                                height: height / 9,
                                width: width / 4,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: height / 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                                text: "Participants      ",
                                size: Responsive.isDesktop(context)
                                    ? 20
                                    : Responsive.isTablet(context)
                                        ? 15
                                        : 13,
                                color: Colors.blue),
                            SizedBox(
                                height: height / 9,
                                width: width / 4,
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    filled: true,
                                  ),
                                  value: dropdownValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 20
                                                  : Responsive.isTablet(context)
                                                      ? 15
                                                      : 13,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: height / 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              text: "Lien ultilisateurs",
                              color: Colors.blue,
                              size: Responsive.isDesktop(context)
                                  ? 20
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                            ),
                            SizedBox(
                                height: height / 9,
                                width: width / 4,
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    filled: true,
                                  ),
                                  value: dropdownValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 20
                                                  : Responsive.isTablet(context)
                                                      ? 15
                                                      : 13,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        height: height / 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              text: "Date de reunion",
                              color: Colors.blue,
                              size: Responsive.isDesktop(context)
                                  ? 20
                                  : Responsive.isTablet(context)
                                      ? 15
                                      : 13,
                            ),
                            SizedBox(
                                height: height / 9,
                                width: width / 4,
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1),
                                    ),
                                    filled: true,
                                  ),
                                  value: dropdownValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 20
                                                  : Responsive.isTablet(context)
                                                      ? 15
                                                      : 13,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                )),
                          ],
                        ),
                      ),
                      Center(
                        child: SizedBox(
                            height: height / 12,
                            width: width / 1.4,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            )),
                      ),
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: CustomText(
                                        text: "Creer",
                                        size: Responsive.isDesktop(context)
                                            ? 20
                                            : Responsive.isTablet(context)
                                                ? 15
                                                : 10,
                                        color: Colors.white)),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: CustomText(
                                        text: "Creer et Planifier",
                                        size: Responsive.isDesktop(context)
                                            ? 20
                                            : Responsive.isTablet(context)
                                                ? 15
                                                : 10,
                                        color: Colors.white)),
                                if (Responsive.isDesktop(context))
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: CustomText(
                                          text: "Details",
                                          size: Responsive.isDesktop(context)
                                              ? 20
                                              : Responsive.isTablet(context)
                                                  ? 15
                                                  : 10,
                                          color: Colors.white))
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: CustomText(
                                    text: "Details",
                                    size: Responsive.isDesktop(context)
                                        ? 20
                                        : Responsive.isTablet(context)
                                            ? 15
                                            : 10,
                                    color: Colors.white)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
