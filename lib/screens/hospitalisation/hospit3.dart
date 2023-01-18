


import 'package:flutter/material.dart';


class DetailJuridique extends StatefulWidget {
  const DetailJuridique({Key? key}) : super(key: key);

  @override
  State<DetailJuridique> createState() => _DetailJuridiqueState();
}

class _DetailJuridiqueState extends State<DetailJuridique> {
    bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
     
        

      children: [
       
        Container(
          height: 30,
          
          child: Row(children: [
            
           SizedBox(
             child: Container(
                 height: 80,
                width: 200,
                 child: Text('Cas légal', 
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
          
              ),),
               ),
           ),
           SizedBox(
              height: 80,
              width: 200,
              child:Checkbox( //only check box
                value: check1, //unchecked
                onChanged: (bool? value){
                    //value returned when checkbox is clicked
                    setState(() {
                        check1 = value;
                    });
                }
              )
              ),
          ],),

         
         
          
        ),



         Container(
          height: 30,
          
          child: Row(children: [
            
           SizedBox(
             child: Container(
                 height: 80,
                width: 200,
                 child: Text("Signale a la police", 
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
          
              ),),
               ),
           ),
           SizedBox(
              height: 80,
              width: 200,
            child:RadioListTile(
            title: Text("oui"),
            value: "male", 
            groupValue: "male", 
            onChanged: (value){
              setState(() {

              });
            },
)
              ),

             
          ],),

         
         
          
        ),



         Container(
          height: 30,
          
          child: Row(children: [
            
           SizedBox(
             child: Container(
                 height: 80,
                width: 200,
                 child: Text("", 
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
          
              ),),
               ),
           ),
           SizedBox(
              height: 80,
              width: 200,
            child:RadioListTile(
            title: Text("non"),
            value: "male", 
            groupValue: "male", 
            onChanged: (value){
              setState(() {

              });
            },
)
              ),

             
          ],),

         
         
          
        ),



      ],
    );
  }
}

