import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      height: 80,
      child: Row(
        children: [
          CustomText(text: widget.fieldname, size: 25),
          Spacer(),
          SizedBox(
            height: heigth / 9,
            width: width / 2,
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
                    size: 25,
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
