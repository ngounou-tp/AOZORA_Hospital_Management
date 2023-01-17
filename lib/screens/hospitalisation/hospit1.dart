
import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  const CheckList({Key? key}) : super(key: key);

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
   bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
            padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Text("liste de Controle d'admission",style: TextStyle(
                       color: Colors.grey,
                       fontSize: 20,
                      ),)
          ],),

      
        ),

        Container(
          height: 100,
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Spacer(),
              Icon( // <-- Icon
                        Icons.bedroom_parent_rounded,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Verifier', style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                  ),),
      
          ],),
        ),


    Container(
       padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      width: double.infinity,
    child: SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
          child: DataTable(
            
            columns: <DataColumn>[

              DataColumn(
                label: Text(
                  'NOM',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                      color: Colors.black,),
                ),
              ),
              DataColumn(
                label: Text(
                  'O/N',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                       color: Colors.black,),
                ),
              ),
              DataColumn(
                label: Text(
                  'Remarque',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                          color: Colors.black,),
                ),
              ),
               DataColumn(
                label: Text(
                  'Delete',
                  style: TextStyle(fontStyle: FontStyle.italic),
                     
                ),
              ),

             
            ],

            rows: List.generate(
              checklist.length,
              (index) => DataRow(
                cells: <DataCell>[
                  DataCell(Text(checklist[index]["id"], style: TextStyle( color: Colors.grey),)),
                  DataCell(Checkbox( //only check box
              value: check1, //unchecked
              onChanged: (bool? value){
                  //value returned when checkbox is clicked
                  setState(() {
                      check1 = value;
                  });
              }
            )),
                  DataCell(TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: '',
              
              ),
            ),),

                   DataCell(Icon(
                  Icons.delete,
                  color: Colors.red,
                  size:20.0,
                  textDirection: TextDirection.ltr,
                  semanticLabel: 'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                ),),
                
                ],
                

                
              ),


                            
              
            ),
          
          ),

          

          
        ),

       
      
    
    ),    


       Container(
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
       child: Row(children: [
        Text('Liste de verification prealable',
          style: TextStyle(	
             fontSize: 14.0,
          color: Colors.grey,),)

       ],),

       ),


        Container(
          height: 100,
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Spacer(),
              Icon( // <-- Icon
                        Icons.bedroom_parent_rounded,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Verifier', style: TextStyle(
                   color: Colors.black,
                   fontSize: 20,
                  ),),
      
          ],),
        ),



    Container(
       padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      width: double.infinity,
    child: SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
          child: DataTable(
            
            columns: <DataColumn>[

              DataColumn(
                label: Text(
                  'NOM',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                      color: Colors.black,),
                ),
              ),
              DataColumn(
                label: Text(
                  'TERMINER',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                       color: Colors.black,),
                ),
              ),
              DataColumn(
                label: Text(
                  'REMARQUES',
                  style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                          color: Colors.black,),
                ),
              ),
         
            ],

            rows: List.generate(
              checkliste.length,
              (index) => DataRow(
                cells: <DataCell>[
                  
                  DataCell(Text(checkliste[index]["id"], style: TextStyle( color: Colors.grey),)),
                   DataCell(Text(checkliste[index]["id"], style: TextStyle( color: Colors.grey),)),
                    DataCell(Text(checkliste[index]["id"], style: TextStyle( color: Colors.grey),)),
                ],
                

                
              ),


                            
              
            ),
          
          ),

          
        ),

       
      
    
    ),  

       
      ],
    );
  }
}


 
    final List checklist = [
    {"id": "Admission Form Filled and Signed by Relative", "name": "John Doe", "age": 40},
     {"id": "Patient File Prepared", "name": "John Doe", "age": 40},
     {"id": "Share General Information & Facilitis", "name": "John Doe", "age": 40},
     {"id": "Having Medi-claim or Schedule Deposit", "name": "John Doe", "age": 40},
     {"id": "Registration Card & Fee", "name": "John Doe", "age": 40},
    
  ];


    final List checkliste = [
    {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
      {"id": "", "name": "John Doe", "age": 40},
    
    
  ];


 