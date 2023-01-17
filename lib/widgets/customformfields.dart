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
          size: 25,
        ),
      ],
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
                ? 18
                : Responsive.isTablet(context)
                    ? 16
                    : 14,
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
              ? 18
              : Responsive.isTablet(context)
                  ? 14
                  : 10,
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
                ? 18
                : Responsive.isTablet(context)
                    ? 16
                    : 14,
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
                        ? 18
                        : Responsive.isTablet(context)
                            ? 16
                            : 14,
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
                ? 18
                : Responsive.isTablet(context)
                    ? 16
                    : 14,
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
