

import 'package:admin/utils/custom_ultility.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DropDown extends StatefulWidget {
   final String name;
  const DropDown({Key? key, required this.name}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
   Widget build(BuildContext context) {
    var dropdownValue =  'Patient';
    return SizedBox(
      height: 100,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(
            height: 80,
         
             child: Text(widget.name, 
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        
          ),),
           ),
           Spacer(),
          SizedBox(

            height: 80,
            width: 200,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide:
                      BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide:
                      BorderSide(color: Colors.grey, width: 2),
                ),
                filled: true,
              ),
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'Patient',
                'Cat',
                'Tiger',
                'Lion'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 10),
                  ),
                );
              }).toList(),
            )),
        ],
      ),
    );
  }
}





class Datetext extends StatefulWidget {
     final String name;
  const Datetext({Key? key, required this.name}) : super(key: key);

  @override
  State<Datetext> createState() => _DatetextState();
}

class _DatetextState extends State<Datetext> {
  @override
  Widget build(BuildContext context) {
    
    TextEditingController dateController=TextEditingController();
     
    return SizedBox(
      height: 100,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(
             height: 80,
          
             child: Text(widget.name, 
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        
          ),),
           ),
           Spacer(),
          SizedBox(
            height: 80,
            width: 100,
            child:TextField(
          controller: dateController, //editing controller of this TextField
            decoration: const InputDecoration( 
                      icon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Enter Date" //label text of field
              ),
            readOnly: true,  // when true user cannot edit text 
            onTap: () async {

                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                       initialDate: DateTime.now(), //get today's date
                      firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                      print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(formattedDate); //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need

                      setState(() {
                         dateController.text = formattedDate; //set foratted date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
                  //when click we have to show the datepicker
            }
  )
            
            ),
                SizedBox(
            height: 80,
            width: 100,
            child:TextField(
          controller: dateController, //editing controller of this TextField
            decoration: const InputDecoration( 
                      icon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Enter Date" //label text of field
              ),
            readOnly: true,  // when true user cannot edit text 
            onTap: () async {

                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                       initialDate: DateTime.now(), //get today's date
                      firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                      print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                      print(formattedDate); //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need

                      setState(() {
                         dateController.text = formattedDate; //set foratted date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
                  //when click we have to show the datepicker
            }
  )
            
            ),
        ],
      ),
    );
  }
}


class CustomField5 extends StatelessWidget {
  const CustomField5({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Container(
      height: 100,
      
      child: Row(
        children: [
          Container(
            
            child: Text(name, 
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        
          ),),),
         Spacer(),
          SizedBox(
            height: heigth / 7,
            width: width / 8,
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(color: Colors.grey, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

