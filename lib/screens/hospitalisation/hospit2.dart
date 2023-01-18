
import 'package:flutter/material.dart';

class EvaluationClinic extends StatefulWidget {
  const EvaluationClinic({Key? key}) : super(key: key);

  @override
  State<EvaluationClinic> createState() => _EvaluationClinicState();
}

class _EvaluationClinicState extends State<EvaluationClinic> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/8;

    double height = MediaQuery.of(context).size.height/16; 
    
    return Container(
        padding: EdgeInsets.all(18.0),
       color: Colors.white,
      child: Column(
       
         crossAxisAlignment: CrossAxisAlignment.start,
         
          children: [

            Text('REMARQUE : les détails sont affichés en fonction de la dernière évaluation', 
           style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          
            ),),

            SizedBox(height: 20,),

          Row(
            children: [
              Container(
                height: height,
                width: width,
                  child: Text('Poids', 
                     style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: height,
                width: width,
                  child: Text('0.00',style: TextStyle(color: Colors.black)),
              ),
              Container(
                height: height,
                width: width,
                child: Text('RR', 
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Text('0', 
                  style: TextStyle(color: Colors.black,),),
                ),
            ],
          ),


            Row(
            children: [
              Container(
                height: height,
                width: width,
                  child: Text('Hauteur', 
                     style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: height,
                width: width,
                  child: Text('0.00',style: TextStyle(color: Colors.black)),
              ),
              Container(
                height: height,
                width: width,
                child: Text('PA', 
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Text('0/0', 
                  style: TextStyle(color: Colors.black,),),
                ),
            ],
          ),

            Row(
            children: [
              Container(
                height: height,
                width: width,
                  child: Text('Temps', 
                     style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: height,
                width: width,
                  child: Text('0.00',style: TextStyle(color: Colors.black)),
              ),
              Container(
                height: height,
                width: width,
                child: Text("systollique/diastollique saturation d'O2", 
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Text('0', 
                  style: TextStyle(color: Colors.black,),),
                ),
            ],
          ),


            Row(
            children: [
              Container(
                height: height,
                width: width,
                  child: Text('', 
                     style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: height,
                width: width,
                  child: Text('',style: TextStyle(color: Colors.black)),
              ),
              Container(
                height: height,
                width: width,
                child: Text('Glycemie aleatoire', 
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Text('0', 
                  style: TextStyle(color: Colors.black,),),
                ),
            ],
          ),

            Row(
            children: [
              Container(
                height: height,
                width: width,
                  child: Text('Indice de masse corporelle', 
                     style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: height,
                width: width,
                  child: Text('0.00',style: TextStyle(color: Colors.black)),
              ),
              Container(
                height: height,
                width: width,
                child: Text('Indice de masse corporelle statut', 
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
              ),
              SizedBox(
                height: height,
                width: width,
                child: Text('', 
                  style: TextStyle(color: Colors.black,),),
                ),
            ],
          ),


            SizedBox(
              height: 80,
              width: 200,
              child: Text('Niveau de douleur', 
           style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            
            ),),
              ),


                SizedBox(
              height: 20,
              width: 200,
              child: Text('Niveau de douleur', 
           style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          
            ),),
              ),

          ],

          
      ),
    );
  }
}