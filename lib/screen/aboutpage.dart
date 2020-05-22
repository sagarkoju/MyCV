import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Column(
          
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
             Card(
               elevation: 5.0,
               child: Padding(
                 padding: EdgeInsets.symmetric(
                   vertical: 30.0,
                   horizontal : 20.0,
                 ),
                 child: Column(
                   children: <Widget> [
                     CircleAvatar(
                       radius: 50.0,
                       backgroundImage: AssetImage("assets/IMG_20161025_123416.jpg"),
                     ),
                     SizedBox(
                       height: 15.0,
                     ),
                       Text("Sagar Koju",style: TextStyle(
                         fontSize: 25.0,
                       ),),
                       SizedBox(
                       height: 5.0,
                    ),
                       Text("Computer Enginnering",style: TextStyle(
                         fontSize: 25.0,
                         color: Colors.blue,
                       ),),
                       SizedBox(
                       height: 5.0,
                      ),
                       Text("Hello My Name is Sagar Koju I am now currently studying Bachelor of Computer Eningeering at Khwopa Enginnering College. And i am practicing flutter and many more programming language in free time. I love to keep my hand dirty in coding, designing solution, code review and most of all kind of technical work", style: TextStyle(
                         fontSize: 15.0,
                       ),),
                      ] , 
                 ),
               ),
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
    );
  }
}