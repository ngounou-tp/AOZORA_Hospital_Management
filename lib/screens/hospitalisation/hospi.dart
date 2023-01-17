

import 'package:flutter/material.dart';

import 'element.dart';

class InformationGeneral extends StatefulWidget {
  const InformationGeneral({Key? key}) : super(key: key);

  @override
  State<InformationGeneral> createState() => _InformationGeneralState();
}

class _InformationGeneralState extends State<InformationGeneral> {

  List donnee= [
  Element8(),
  Element9(),
  Element10(),
  Element11(),
  Element12(),
  Element13(),
  Element14(),
  Element15(),

  ];
  @override
  Widget build(BuildContext context) {
    return      Container(
              
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
                            children: List.generate(donnee.length, (index) {
                              return Center(
                                child: donnee[index],
                              ); //robohash.org api provide you different images for any number you are giving
                            })),
                    ), 
                  ),
                ],
              ),
      
            );
  }
}