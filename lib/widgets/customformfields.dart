import 'package:admin/color_constants.dart';
import 'package:admin/responsive.dart';
import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCheckBox extends StatefulWidget {
  final String name;
  const CustomCheckBox({Key? key, required this.name}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Checkbox(
          value: valuefirst,
          checkColor: Colors.black,
          activeColor: backgroundColor,
          onChanged: (value) {
            setState(() {
              this.valuefirst = value!;
            });
          },
        ),
        SizedBox(
          width: 30,
        ),
        CustomText(
          text: widget.name,
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 11,
        ),
      ],
    );
  }
}

class CustomCheckBox2 extends StatefulWidget {
  final String name;
  const CustomCheckBox2({Key? key, required this.name}) : super(key: key);

  @override
  State<CustomCheckBox2> createState() => _CustomCheckBoxState2();
}

class _CustomCheckBoxState2 extends State<CustomCheckBox2> {
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 3,
      child: Row(
        children: [
          Container(
            width: width / 5,
            child: CustomText(
              text: widget.name,
              size: Responsive.isDesktop(context)
                  ? 16
                  : Responsive.isTablet(context)
                      ? 14
                      : 11,
            ),
          ),
          Spacer(),
          Checkbox(
            value: valuefirst,
            checkColor: Colors.black,
            activeColor: backgroundColor,
            onChanged: (value) {
              setState(() {
                this.valuefirst = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  const CustomField({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 9,
      child: Row(
        children: [
          CustomText(
            text: name,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          SizedBox(
            width: width / 3.5,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomField3 extends StatelessWidget {
  const CustomField3({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 9,
      width: width / 3,
      child: Row(
        children: [
          Container(
            width: width / 5,
            child: CustomText(
              text: name,
              size: Responsive.isDesktop(context)
                  ? 16
                  : Responsive.isTablet(context)
                      ? 14
                      : 11,
            ),
          ),
          Spacer(),
          SizedBox(
            width: width / 9,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomField2 extends StatelessWidget {
  const CustomField2({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 9,
      child: Row(
        children: [
          CustomText(
            text: name,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          SizedBox(
            width: width / 1.5,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({Key? key, required this.function, required this.name})
      : super(key: key);
  final String name;
  Function() function;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return ElevatedButton(
        onPressed: function,
        child: CustomText(
          text: name,
          color: Colors.white,
          size: Responsive.isDesktop(context)
              ? 16
              : Responsive.isTablet(context)
                  ? 14
                  : 11,
        ));
  }
}

class CustomDropDownField extends StatefulWidget {
  String defaultvalue;
  final List<String> dropdownitem;
  final String fieldname;
  CustomDropDownField(
      {Key? key,
      required this.defaultvalue,
      required this.dropdownitem,
      required this.fieldname})
      : super(key: key);

  @override
  State<CustomDropDownField> createState() => _CustomDropDownFieldState();
}

class _CustomDropDownFieldState extends State<CustomDropDownField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      child: Row(
        children: [
          CustomText(
            text: widget.fieldname,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          SizedBox(
            width: width / 3.5,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              value: widget.defaultvalue,
              items: widget.dropdownitem
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: CustomText(
                    text: value,
                    size: Responsive.isDesktop(context)
                        ? 16
                        : Responsive.isTablet(context)
                            ? 14
                            : 11,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  widget.defaultvalue = newValue!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class CustomDropDownField3 extends StatefulWidget {
  String defaultvalue;
  final List<String> dropdownitem;
  final String fieldname;
  CustomDropDownField3(
      {Key? key,
      required this.defaultvalue,
      required this.dropdownitem,
      required this.fieldname})
      : super(key: key);

  @override
  State<CustomDropDownField3> createState() => _CustomDropDownFieldState3();
}

class _CustomDropDownFieldState3 extends State<CustomDropDownField3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      width: width / 3,
      child: Row(
        children: [
          Container(
            width: width / 5,
            child: CustomText(
              text: widget.fieldname,
              size: Responsive.isDesktop(context)
                  ? 16
                  : Responsive.isTablet(context)
                      ? 14
                      : 11,
            ),
          ),
          Spacer(),
          SizedBox(
            width: width / 9,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              value: widget.defaultvalue,
              items: widget.dropdownitem
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: CustomText(
                    text: value,
                    size: Responsive.isDesktop(context)
                        ? 16
                        : Responsive.isTablet(context)
                            ? 14
                            : 11,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  widget.defaultvalue = newValue!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class CustomDropDownField2 extends StatefulWidget {
  String defaultvalue;
  final List<String> dropdownitem;
  final String fieldname;
  CustomDropDownField2(
      {Key? key,
      required this.defaultvalue,
      required this.dropdownitem,
      required this.fieldname})
      : super(key: key);

  @override
  State<CustomDropDownField2> createState() => _CustomDropDownFieldState2();
}

class _CustomDropDownFieldState2 extends State<CustomDropDownField2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      child: Row(
        children: [
          CustomText(
            text: widget.fieldname,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          SizedBox(
            width: width / 1.5,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              value: widget.defaultvalue,
              items: widget.dropdownitem
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: CustomText(
                    text: value,
                    size: Responsive.isDesktop(context)
                        ? 16
                        : Responsive.isTablet(context)
                            ? 14
                            : 11,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  widget.defaultvalue = newValue!;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class MyCalenderField extends StatefulWidget {
  final String name;
  MyCalenderField({Key? key, required this.name}) : super(key: key);

  @override
  State<MyCalenderField> createState() => _MyCalenderFieldState();
}

class _MyCalenderFieldState extends State<MyCalenderField> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _date = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      child: Row(
        children: [
          CustomText(
            text: widget.name,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          Container(
              width: width / 3.5,
              child: TextFormField(
                controller: _date,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                onTap: () async {
                  DateTime? pickddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));
                  if (pickddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },
              )),
        ],
      ),
    );
  }
}

class MyCalenderField3 extends StatefulWidget {
  final String name;
  MyCalenderField3({Key? key, required this.name}) : super(key: key);

  @override
  State<MyCalenderField3> createState() => _MyCalenderFieldState3();
}

class _MyCalenderFieldState3 extends State<MyCalenderField3> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _date = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      child: Row(
        children: [
          CustomText(
            text: widget.name,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          Container(
              width: width / 7.3,
              child: TextFormField(
                controller: _date,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                onTap: () async {
                  DateTime? pickddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));
                  if (pickddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },
              )),
          Icon(Icons.arrow_forward, color: Colors.teal, size: 15),
          Container(
              width: width / 7.3,
              child: TextFormField(
                controller: _date,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                onTap: () async {
                  DateTime? pickddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));
                  if (pickddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },
              )),
        ],
      ),
    );
  }
}

class MyCalenderField2 extends StatefulWidget {
  final String name;
  MyCalenderField2({Key? key, required this.name}) : super(key: key);

  @override
  State<MyCalenderField2> createState() => _MyCalenderFieldState2();
}

class _MyCalenderFieldState2 extends State<MyCalenderField2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _date = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: heigth / 10,
      child: Row(
        children: [
          CustomText(
            text: widget.name,
            size: Responsive.isDesktop(context)
                ? 16
                : Responsive.isTablet(context)
                    ? 14
                    : 11,
          ),
          Spacer(),
          Container(
              width: width / 1.5,
              child: TextFormField(
                controller: _date,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                onTap: () async {
                  DateTime? pickddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2100));
                  if (pickddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickddate);
                    });
                  }
                },
              )),
        ],
      ),
    );
  }
}
