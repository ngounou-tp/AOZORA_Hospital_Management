
import 'package:flutter/material.dart';

class EvaluationClinic extends StatefulWidget {
  const EvaluationClinic({Key? key}) : super(key: key);

  @override
  State<EvaluationClinic> createState() => _EvaluationClinicState();
}

class _EvaluationClinicState extends State<EvaluationClinic> {
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
        
        children: [
           Container(
             height: 80,
            width: 200,
             child: Text('REMARQUE : les détails sont affichés en fonction de la dernière évaluation', 
         style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        
          ),),
           ),
        ],
      ),
        ],
    );
  }
}