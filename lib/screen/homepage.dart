import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app2/screen/aboutpage.dart';
import 'package:share/share.dart';
import 'package:app2/screen/notes.dart';
import 'package:app2/screen/personal.dart';
import 'package:carousel_pro/carousel_pro.dart';
// import 'package:app2/screen/hori.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imagecarousel = new Container(

      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('assets/FB_IMG_1557378935387.jpg'),
          AssetImage('assets/received_486486358553323.jpeg'),
          AssetImage('assets/received_645216145933033.jpeg'),
          AssetImage('assets/received_486486358553323.jpeg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,

      ),
 );
    return Scaffold(
     drawer: new Drawer(
          child:  new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text("Sagar Koju"),
              accountEmail: Text("sagarkoju5@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage("assets/IMG_20161025_123416.jpg"),
                  backgroundColor: Colors.grey,
                 ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home "),),
              ListTile(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)
                  {
                    return AboutPage();
                  }
                  ),
                );
              },
              leading: Icon(Icons.info),
              title: Text("About"),),
              ListTile(
              onTap: (){
                launch("https://play.google.com/store/apps/details?id=com.tencent.ig");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),),
              ListTile(
              onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)
                  {
                    return Personalinfo();
                  }
                  )
                );
              },
              leading: Icon(Icons.person),
              title: Text("Personal Information"),),
              ListTile(
              onTap: (){
                 Share.share("Hi Download these App from https://play.google.com/store/apps/details?id= ");
              },
              leading: Icon(Icons.share),
              title: Text("Share"),),
               ListTile(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)
                  {
                    return Notes();
                  }
                  ),
                );
              },
              leading: Icon(Icons.note),
              title: Text("Notes"),),
          ],
        ),
        ),
       appBar: AppBar(
        centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
          
                  child: Column(
                  
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
                  imagecarousel,
                  
             Padding(
               padding: const EdgeInsets.only(
                 top: 10.0,
                 left: 10.0,
                 bottom: 3.0,
               ),
               
               child: Text("Social Link",
               style: TextStyle(
                 fontSize: 30.0,
               ),),
             ),
             Card(
               elevation: 5.0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget> [
                   IconButton(
                     icon: Icon(FontAwesomeIcons.facebook), onPressed: () {
                       launch("https://www.facebook.com/sagar.koju");
                     },
                     color: Colors.blue,
                   ),
                   IconButton(
                     icon: Icon(FontAwesomeIcons.googleDrive), onPressed: () {
                       launch("https://drive.google.com/drive/u/0/my-drive");
                     },
                     color: Colors.blueAccent,
                   ),
                   IconButton(
                     icon: Icon(FontAwesomeIcons.instagram), onPressed: () {
                       launch("https://www.instagram.com/?hl=ne");
                     },
                      color: Colors.red,
                   ),
                   IconButton(
                     icon: Icon(FontAwesomeIcons.google, 
                     color: Colors.blueGrey,
                   ), onPressed: () {
                     launch("https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox");
                   },
                   ),
                 ]
               ),
                          ),
             ),
             Padding(
               padding: const EdgeInsets.only(
                 top: 10.0,
                 left: 10.0,
                 bottom: 3.0,
               ),
               child: Text("Skill",
               style: TextStyle(
                 fontSize: 30.0,
               ),),
             ),
             Card(
               elevation: 2.0,
               child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://toplinetech.com.np/wp-content/themes/topline_tech/images/web.png")
                  ),
                title: Text("Web Development"),
                subtitle: Text("HTML,CSS , java, Python, PHP, javaScript"),
               ),
             ),
             Card(
               elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxiF-EFMmTICZYPKO2k0UaxubR2zfp3ULV8W9is2m8liqD4Yp1&usqp=CAU")
                  ),
                title: Text("APP Development"),
                subtitle: Text("Flutter, Dart, Andriod, kotlin, React Native"),
               ),
             ),
            
            SizedBox(
              height:10.0,
            ),
             Padding(
               padding: const EdgeInsets.only(
                 top: 10.0,
                 left: 10.0,
                 bottom: 3.0,
               ),
               child: Text("Hobbies and Interest",
               style: TextStyle(
                 fontSize: 30.0,
                 color: Colors.red,
                 
               ),),
             ),
            
              Card(
               elevation: 2.0,
               child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                   backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIMsClQds_ZhNWpawpl4sW74TH3bX74wOo0JvB6vSCakVEIk0b&usqp=CAU")
                  ),
                title: Text("Football"),
                subtitle: Text(" Champion League, Bundensliga , DFB Pokal"),
               ),
             ),
             Card(
               elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS58P3XBsrGo2bNTHzhUjDPU-QhBfP0mGV5mWQ4aW4NHWzGMdxi&usqp=CAU")
                  ),
                title: Text("Cycling"),
               subtitle: Text("Lake Side , Pokhara"),
               ),
             ),
            Card(
               elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR1mt0rQ-Pw8AsVuCVGIVmL5qIIfQqVmT9r8aJHRtyL29lwclIt&usqp=CAU")
                  ),
                title: Text("Reading"),
                subtitle: Text("Novel, Programming Book"),
               ),
             ),

             Card(
               elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRs0gKXJvkwD378Kz7Pd3RUrBTDPl1tDNS0eWGVUMRRjyQV3v3R&usqp=CAU")
                  ),
                title: Text("Hiking"),
                 subtitle: Text("Nagarkot, Muktinath,Tilicho Lake"),
               ),
             ),
             Card(
               elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage("https://image.shutterstock.com/image-photo/television-tv-watching-golf-game-260nw-400132396.jpg")
                  ),
                title: Text("Watching Televison"),
                subtitle: Text("Sports Channel , Movie "),
               ),
             ),
            // new Padding(padding: const EdgeInsets.all(8.0)),
            //  new Text("Hobbies and Interst"),
     
            ],
             ),
        ),
      );
    }
}
