import 'package:flutter/material.dart';
class Personalinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: AppBar(
        title: Text("Personal Info"),
      ),
      body: new  Container(
            color: Colors.white,
        width: double.infinity,
        child: new  Column(
          //  mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Container(
              child:   new  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Text(" Name:                Sagar koju",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
            ),),
           Text(" Address:            Bhaktapur",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
           ),),
             Text(" Mobile No:         9863180182",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Father Name:    Keshav Koju",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Mother Name:   Pancha Laxmi koju",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Ocupation:         Student",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Education:          ComputerEngineering",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Sex:                      Male",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Email:               sagarkoju5@gmail.com",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" DOB:                    2054/02/26",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Nationality:          Nepali",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),
 Text(" Religion:                Hindu",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20.0,
                   
 ),),

                 
               ],
               
               ),
            
          margin: EdgeInsets.all(20.0),
                 color: Colors.green,
                 width: 450.0,
                 height: 450.0,
           ),
      RaisedButton(
            color: Colors.tealAccent,
            child: Text("Go Back",style: TextStyle(
              color: Colors.black,
            ),),
            onPressed: (){
              Navigator.pop(context);
               },
          ),
            
      ],
  ),
  ),
);
}
}