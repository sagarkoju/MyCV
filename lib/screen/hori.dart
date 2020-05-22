import 'package:flutter/material.dart';
 class Horizontal extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       height: 90.0,
       child: ListView(
        //  scrollDirection: Axis.horizontal,
         children: <Widget>[
         Category(
           imagelocation:'assets/cats/download (2).png',
           imagecaption : 'HIKING',
           ),
          //  Category(
          //  imagelocation:'assets/cats/download (1).png',
          //  imagecaption : 'HIKING',
          //  ),
          //  Category(
          //  imagelocation:'assets/cats/download (1).jpg',
          //  imagecaption : 'HIKING',
          //  ),
          //   Category(
          //  imagelocation:'assets/cats/download.png',
          //  imagecaption : 'HIKING',
          //  ),
          //   Category(
          //  imagelocation:'assets/cats/download.png',
          //  imagecaption : 'HIKING',
          //  )
         ],
       ),
       
     );
   }
 }
 class Category extends StatelessWidget {
     final String imagelocation;
     final String imagecaption;  
     Category({
       this.imagelocation,
       this.imagecaption,
     });
   @override
   Widget build(BuildContext context) {
     return Padding(padding: const EdgeInsets.all(2.0),
     child: InkWell(onTap:(){},
     child: Container(
       width:100.0,
       child: ListTile(
         title: Image.asset(imagelocation,
         width: 100.0,
         height: 90.0,
         ),
         subtitle: Container(
           alignment: Alignment.bottomLeft,
           child: Text('imagecaption'),
            // style: TextStyle(
              
            //   fontSize: 50.0,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
           
         ) ),
     ),),);
   }
 }