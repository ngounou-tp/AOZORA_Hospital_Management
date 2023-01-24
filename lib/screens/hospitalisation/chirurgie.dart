
import 'package:admin/screens/hospitalisation/widgetForm.dart';
import 'package:flutter/material.dart';


import 'elementChurie.dart';
import 'hospitalisation.dart';

class Chirurgie extends StatefulWidget {
  const Chirurgie({Key? key}) : super(key: key);

  @override
  State<Chirurgie> createState() => _ChirurgieState();
}

class _ChirurgieState extends State<Chirurgie> {
  @override
  Widget build(BuildContext context) {
       
List dat = [
ElementChuri(),
ElementChuri1(),
ElementChuri2(),
ElementChuri3(),
CustomField5(name: 'Nom de la chirurgie',),
     Row(
       children: [
         Text('Facture', style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold,),),
         SizedBox(width: 100,),
       ],
     ),
  
];
    double height = MediaQuery.of(context).size.height; 
    double width = MediaQuery.of(context).size.width; 
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: width,
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

             Row(
               children: [
                  TextButton(
                      child: Text('Hospitalisation /',style: TextStyle(
                   color: Colors.indigo,
                   fontSize: 20,
                  ), ),
                      onPressed: () {
                         Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Hospitalisation()),
                            );
                      },
                    ),
                      TextButton(
                      child: Text('HOSP001 /',style: TextStyle(
                   color: Colors.indigo,
                   fontSize: 20,
                  ), ),
                      onPressed: () {
                        
                      },
                    ),
                    TextButton(
                      child: Text('Chirurgie /',style: TextStyle(
                   color: Colors.indigo,
                   fontSize: 20,
                  ), ),
                      onPressed: () {
                        
                      },
                    ),
                       Text(
                  "Nouveau /",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,    
                  ),
                ),
                    Spacer(),
                  
                ],
            ),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
               
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sauvegardez'),
        
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          padding: MaterialStateProperty.all(EdgeInsets.all(18)),
                          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    ),
                  ),
        
                  
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Annulez', style: TextStyle(
                     color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
        
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(EdgeInsets.all(18)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  ),
                ],
              ),

               SizedBox(height: 10),
      
          Container(
            width:double.infinity,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
            color: Colors.grey,  // red as border color
            ),
            ),  
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CONFIRMER', style: TextStyle(
                 color: Colors.white,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    padding: MaterialStateProperty.all(EdgeInsets.all(18)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CREER UNE FACTURE', style: TextStyle(
                 color: Colors.white,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    padding: MaterialStateProperty.all(EdgeInsets.all(18)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
      
              Spacer(),
      
      
                    ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('BROUILLON', style: TextStyle(
                 color: Colors.white,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
                     ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('CONFIRMER', style: TextStyle(
                 color:  Colors.white,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
                    ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:  Text('TERMINER', style: TextStyle(
                 color: Colors.white,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
            ]),
          
          ),
          SizedBox(height: 8,),
             Container(
            width:double.infinity,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
            color: Colors.grey,  // red as border color
            ),
            ),  
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Spacer(),
                    ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Ordonnance', style: TextStyle(
                 color: Colors.grey,
                ),),
      
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
              ),
             
            ]),
          
          ),
              Container(
               
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
                  SizedBox(
                   height:MediaQuery.of(context).size.height/3,
                    child:   Container(
                            width: 900,

                      child: Padding(
                        padding: const EdgeInsets.only(top:50),
                        child: GridView.count(
                                       
                              crossAxisCount: 2,
                              crossAxisSpacing: 100,
                              mainAxisSpacing: 8,
                              childAspectRatio: 150/15,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: List.generate(dat.length, (index) {
                                return Center(
                                  child: dat[index],
                                ); //robohash.org api provide you different images for any number you are giving
                              })),
                      ),
                    ), 
                  ),
                ],
              ),
      
            ),

        ],),
      )
    ); 
  }
}