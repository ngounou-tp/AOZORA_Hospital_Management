import 'package:admin/screens/hospitalisation/chirurgie.dart';
import 'package:admin/screens/hospitalisation/hospitalisation.dart';
import 'package:flutter/material.dart';

class CreeChuri extends StatelessWidget {
  
  @override
   Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; 
    double width = MediaQuery.of(context).size.width; 
    return Scaffold(

      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(15.0),
      
         child: Container(
              height: height/8,
              width: width,
              color: Colors.white54,
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
                         Text(
                    "Chirurgie /",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,    
                    ),
                  ),
                      Spacer(),
                    
                  ],
              ),
              SizedBox(height: 10,),
                 ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Chirurgie()),
                              );
                    },
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('CREER', style: TextStyle(),),
                      ],
                    ),
                  ),
            ],
        ),
         ),
      ),
    );
  }
}