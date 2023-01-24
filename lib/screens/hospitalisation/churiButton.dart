import 'package:admin/screens/hospitalisation/widgetForm.dart';
import 'package:flutter/material.dart';



class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {

  List hac = [
       Row(
       children: [
         Text('Modele Details', style: TextStyle( color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(width: 100,),
       ],
     ),
          Row(
       children: [
         Text('Details du chirurgien', style: TextStyle( color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(width: 100,),
       ],
     ), 
  DropDown(name: 'Modèle de chirurgie',),
  DropDown(name: 'Chirurgien principal',),


 DropDown(name: 'Produit de chirurgie',),

  
  DropDown(name: 'Docteur primaire',),

 Row(
       children: [
         Text('Autre details', style: TextStyle( color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(width: 100,),
       ],
     ),

   DropDown(name: 'Chirurgien assistants',),
    
 DropDown(name: 'Infirmière de gommage',),

    Row(
       children: [
         Text("Details de l'anestesie", style: TextStyle( color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
         SizedBox(width: 100,),
       ],
     ),



  
     DropDown(name: "chambre d'opération",),
       DropDown(name: 'Anesthésiste',),
    
  
 
  
  DropDown(name: 'Traitement',),
  DropDown(name: 'Anesthésie',),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(  
               padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: Colors.white,
               border: Border.all(
              color: Colors.white54,  // red as border color
            ),
              ), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                          width: 900,
              
                    child: Padding(
                      padding: const EdgeInsets.only(top:50),
                      child: GridView.count(
                                     
                            crossAxisCount: 2,
                            crossAxisSpacing: 100,
                            mainAxisSpacing: 8,
                            childAspectRatio: 12,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: List.generate(hac.length, (index) {
                              return Center(
                                child: hac[index],
                              ); //robohash.org api provide you different images for any number you are giving
                            })),
                    ),
                  ),
                           SizedBox(height: 10,),

                         Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  hintText: 'Note Operatoires.',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 1.0),
                                  
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 2.0),
                                  
                                  ),
                                ),
                              ),
                            ),
                          ),
      
                ],
              ),
      
            );
  }
}





class ListeCon extends StatefulWidget {
  const ListeCon({Key? key}) : super(key: key);

  @override
  State<ListeCon> createState() => _ListeConState();
}

class _ListeConState extends State<ListeCon> {
   bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [

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
                  'Terminer',
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
                  '',
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

       ElevatedButton(
                 
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Ajouter une ligne', style: TextStyle(
                   color: Colors.white,
                  ),),   
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                 Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white,
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  hintText: 'Note Operatoires.',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 1.0),
                                  
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 2.0),
                                  
                                  ),
                                ),
                              ),
                            ),
                          ),
     
      ],
    );
  }
}



class Medocs extends StatefulWidget {
  const Medocs({Key? key}) : super(key: key);

  @override
  State<Medocs> createState() => _MedocsState();
}

class _MedocsState extends State<Medocs> {
   bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(child: Text('Consommable',style:  TextStyle(color: Colors.grey,fontSize: 20,),),),
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
                    'CONSOMMABLE',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                        color: Colors.black,),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'QUANTITE',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                         color: Colors.black,),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'LOT/SERIAL NUMBER',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                  ),
                ),
                 DataColumn(
                  label: Text(
                    'SUBTOTAL',
                     style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),

               
              ],

              rows: List.generate(
                tabl.length,
                (index) => DataRow(
                  cells: <DataCell>[
                     DataCell(Text(tabl[index]["id"], style: TextStyle( color: Colors.grey),)),
                      DataCell(Text(tabl[index]["id"], style: TextStyle( color: Colors.grey),)),
                      DataCell(Text(tabl[index]["id"], style: TextStyle( color: Colors.grey),)),
                        DataCell(Text(tabl[index]["id"], style: TextStyle( color: Colors.grey),)),
                  ],
                ),      
              ),
            
            ),
            
          ),    
      ), 


                ElevatedButton(
                   
                    onPressed: () {},
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Ajouter une ligne', style: TextStyle(
                     color: Colors.white,
                    ),),   
                      ],
                    ),
                  ),
                     Padding(
                       padding: const EdgeInsets.all(25.0),
                       child: SizedBox(child: Text('Regime de Medicaments',style:  TextStyle(color: Colors.grey,fontSize: 20,),),),
                     ),
                   ElevatedButton(
                   
                    onPressed: () {},
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Creer une Ordonnance', style: TextStyle(
                     color: Colors.white,
                    ),),   
                      ],
                    ),
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
                    'NOM DU MEDICAMENT',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                        color: Colors.black,),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'COMPOSANT ACTIF',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                         color: Colors.black,),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'FORME',
                    style: TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                  ),
                ),
                 DataColumn(
                  label: Text(
                    'DOSE',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),

                 DataColumn(
                  label: Text(
                    'JOURS',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),
                  DataColumn(
                  label: Text(
                    'Dose',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),
                  DataColumn(
                  label: Text(
                    'FREQUENCE',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),
                  DataColumn(
                  label: Text(
                    'UNITES',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),
                  DataColumn(
                  label: Text(
                    'INSTRUCTION',
                    style:  TextStyle(	fontWeight: FontWeight.bold,  fontSize: 14.0,
                            color: Colors.black,),
                       
                  ),
                ),
              ],

              rows: List.generate(
                table.length,
                (index) => DataRow(
                  cells: <DataCell>[
                     DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                      DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                      DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                        DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                         DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                          DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                           DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                            DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                             DataCell(Text(table[index]["id"], style: TextStyle( color: Colors.grey),)),
                  ],
                ),      
              ),
            
            ),
            
          ),

         
        
      
      ),

       
                ElevatedButton(
                   
                    onPressed: () {},
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Ajouter une ligne', style: TextStyle(
                     color: Colors.white,
                    ),),   
                      ],
                    ),
                  ),  
           SizedBox(child: Text('precautions speciales',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  
                   Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white,
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  hintText: '',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 1.0),
                                  
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 2.0),
                                  
                                  ),
                                ),
                              ),
                            ),
                          ), 
                           SizedBox(child: Text('Information supplementaires',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                    Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white,
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  hintText: '',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 1.0),
                                  
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 2.0),
                                  
                                  ),
                                ),
                              ),
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white,
                              child: TextField(
                                onChanged: (value) {
                                  //Do something with the user input.
                                },
                                decoration: InputDecoration(
                                  hintText: 'Note operatoire',
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 1.0),
                                  
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey, width: 2.0),
                                  
                                  ),
                                ),
                              ),
                            ),
                          ),
      ],
      ),
    );
  }
}


class Commandes extends StatefulWidget {
  const Commandes({Key? key}) : super(key: key);

  @override
  State<Commandes> createState() => _CommandesState();
}

class _CommandesState extends State<Commandes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(child: Text('Instruction Generales',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
                              SizedBox(child: Text('Precaution Speciales',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),


                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Note operatoire',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
      ],),
    );
  }
}


class Resumes extends StatefulWidget {
  const Resumes({Key? key}) : super(key: key);

  @override
  State<Resumes> createState() => _ResumesState();
}

class _ResumesState extends State<Resumes> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(child: Text('Diagnostic',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
                              SizedBox(child: Text('Histoire clinique',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),

                              SizedBox(child: Text('Examen',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
                               SizedBox(child: Text('Enquetes',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
                               SizedBox(child: Text('Conseil sur la decharge',style:  TextStyle(color: Colors.grey,fontSize: 10,),),),  

                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white,
                                child: TextField(
                                  onChanged: (value) {
                                    //Do something with the user input.
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Note operatoire',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 1.0),
                                    
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey, width: 2.0),
                                    
                                    ),
                                  ),
                                ),
                              ),
                            ),
      ],),
    );
  }
}





    final List checklist = [
    {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
      {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
  ];



    final List tabl = [
    {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
      {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
  ];


    final List table = [
    {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
      {"id": "", "name": "John Doe", "age": 40},
     {"id": "", "name": "John Doe", "age": 40},
  ];