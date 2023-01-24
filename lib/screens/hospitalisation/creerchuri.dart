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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                   SizedBox(
                    width: width/3,
                   height: height/20,
                    child: TextFormField(decoration: InputDecoration(labelText: 'rechercher...'),),
                   ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.search),),
                 ],
             ),
             SizedBox(height: 10,),
                Row(
                  children: [
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
                     SizedBox(width: width/1.4,),
                   Padding(
                     padding: const EdgeInsets.only(right:8.0),
                     child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.control_point,
                                color: Colors.black,
                              ),
                              label: Text(
                                '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white, minimumSize: Size(50, 50)),
                            ),
                   ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                              label: Text(
                                '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white, minimumSize: Size(50, 50)),
                            ),
                          ),
                           ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            label: Text(
                              '',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white, minimumSize: Size(50, 50)),
                          ),
                  ],
                ),
           ],
          ),
        ),
      ),
    );
  }
}