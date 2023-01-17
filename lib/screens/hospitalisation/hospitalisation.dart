import 'package:admin/color_constants.dart';
import 'package:admin/screens/dashboard/element.dart';
import 'package:flutter/material.dart';

import 'hospi.dart';
import 'hospit1.dart';
import 'hospit2.dart';
import 'hospit3.dart';

class Hospitalisation extends StatefulWidget {
  const Hospitalisation({Key? key}) : super(key: key);

  @override
  State<Hospitalisation> createState() => _HospitalisationState();
}

class _HospitalisationState extends State<Hospitalisation> {

  int currentIndex = 0;

     
List data = [
  
Elements(),
   
Element2(),
  
Element3(),
  

Element4(),

Element5(),


 Element6(),

 Element7(),
  
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
      
            Row(
              children: [
                Text(
                  "Hospitalisation /",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.15,
                  ),
                ),
      
                Text(
                  "Nouveau",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.15,
                  ),
                ),
              ],
            ),
      
               SizedBox(height: 10),
      
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
                        backgroundColor: MaterialStateProperty.all(Colors.indigo),
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
              height: 70,
               padding: const EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
              color: Colors.grey,  // red as border color
              ),
              ),  
              child: Row(children: [
                   ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Confirmer', style: TextStyle(
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
                  child: const Text('HOSPITALISER', style: TextStyle(
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
                  child: const Text('DECHARGER', style: TextStyle(
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
      
               SizedBox(height: 10),
      
              Container(
              height: 70,
               padding: const EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
              color: Colors.grey,  // red as border color
              ),
              ),  
      
              child: Row(children: [
                Spacer(),
               ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.bedroom_parent_rounded,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Chirurgie', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
      
                   ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.bedroom_parent_rounded,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Attribution', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
      
                   ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.headphones,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Evaluation', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
                   ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.headphones,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Round de', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
                   ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.book_sharp,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Revendication', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
                    ElevatedButton(
                  onPressed: () {},
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Icon( // <-- Icon
                        Icons.book_online,
                        color: Colors.grey,
                        size: 24.0,
                        
                      ),
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Patient Doc', style: TextStyle(
                   color: Colors.grey,
                  ),),
      
                  
                     
                    ],
                  ),
                ),
      
              ]),
             
            
            ),
      
      
            Container(
      
              height: 70,
               padding: const EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
              color: Colors.white,
            
              ), 
              child: Row(
                 mainAxisSize: MainAxisSize.min,
      
                children: [
                     Text('Hospitalisation#', style: TextStyle(
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                  ),),
                  Spacer(),
                      Icon( // <-- Icon
                        Icons.add_a_photo,
                        color: Colors.grey,
                        size: 70,
                        
                      ),
      
              ]),
      
            ),
      
      
             Container(
              
               padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: Colors.white,
            
              ), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                   height:MediaQuery.of(context).size.height/3,
                    child:   Container(
                            width: 900,

                      child: GridView.count(
                                     
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            childAspectRatio: 150/15,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: List.generate(data.length, (index) {
                              return Center(
                                child: data[index],
                              ); //robohash.org api provide you different images for any number you are giving
                            })),
                    ), 
                  ),
                ],
              ),
      
            ),

          Container(
             padding: const EdgeInsets.all(8.0),
         child:  Row(
              children: [
                      ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentIndex=0;
                    });
                  },
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('Information Generale', style: TextStyle(
                   color:  currentIndex==0 ? Colors.blue : Colors.grey
                  ),),
      
                  
                     
                    ],
                  ),
                ),

                 ElevatedButton(
                  onPressed: () {
                     setState(() {
                      currentIndex=1;
                    });
                  },
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('CHECKLIST', style: TextStyle(
                   color: currentIndex==1 ? Colors.blue : Colors.grey
                  ),),
      
                  
                     
                    ],
                  ),
                ),

                 ElevatedButton(
                  onPressed: () {
                     setState(() {
                      currentIndex=2;
                    });
                  },
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('EVALUATION CLINIQUE', style: TextStyle(
                   color: currentIndex==2 ? Colors.blue : Colors.grey
                  ),),
      
                  
                     
                    ],
                  ),
                ),

                 ElevatedButton(
                  onPressed: () {
                     setState(() {
                      currentIndex=3;
                    });
                  },
                   style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        
                       SizedBox(
                        width: 5,
                      ),
                  
                      Text('DETAILS JURIDIQUES', style: TextStyle(
                   color:currentIndex==3 ? Colors.blue : Colors.grey
                  ),),
      
                  
                     
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width:MediaQuery.of(context).size.width-10,
            child: Column(children: [
               
              currentIndex==0 ? InformationGeneral() :

                currentIndex==1 ? CheckList() :
                
                 currentIndex==2? EvaluationClinic() :
                
                currentIndex==3 ?  DetailJuridique() :

                SizedBox()

            ]),
          ),

          ],
        ),
      ),
    );
  }

}
