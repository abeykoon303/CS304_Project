import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/helper/authenticate.dart';
import 'package:flutterapp/views/Profile.dart';
import 'package:flutterapp/views/add_event_page.dart';
import 'package:flutterapp/views/eventpage.dart';
import 'package:flutterapp/views/events.dart';

import 'package:flutterapp/views/search.dart';
import 'package:flutterapp/views/signIn.dart'; 
import 'package:flutterapp/views/signup.dart';
import 'package:flutterapp/views/chatroomscreen.dart';
import 'package:flutterapp/views/taskpage.dart';
import 'package:flutterapp/widget/widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:'bCHAT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.orange,
      
      ),
      home:Events(),

      
      
    );

  }
}
  class Homescreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Drawer(
      child:new ListView(
        children:<Widget>[
          new DrawerHeader(
            decoration:BoxDecoration(
              gradient:LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orange

                ] )
            ) ,
            child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Image.asset('assets/images/logob.png',width: 100,height: 100,),
                    ),
                    SizedBox(height: 10,),
                    Text('bCHAT Messanger',style:TextStyle(color: Colors.white,fontSize: 15),)
                  ]
                )
              ) ),
            
           
          
           Padding(
             
             padding: const EdgeInsets.all(8.0),
             child: new ListTile(
                title: Container(
                  
                  height:40 ,
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Row(
                    
                      children:<Widget>[
                      Icon(Icons.person),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Profile',style: TextStyle(fontSize: 16),),
                    ),],
                    ),
                    Icon(Icons.arrow_right)
                  ],),
                ),
                
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ProfilePage()) );
                }
              ),
           ),

           Padding(
             
             padding: const EdgeInsets.all(8.0),
             child: new ListTile(
                title: Container(
                  
                  height:40 ,
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Row(
                    
                      children:<Widget>[
                      Icon(Icons.chat),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Chat Room',style: TextStyle(fontSize: 16),),
                    ),],
                    ),
                    Icon(Icons.arrow_right)
                  ],),
                ),
                
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ChatRoom()) );
                }
              ),
           ),

           Padding(
             
             padding: const EdgeInsets.all(8.0),
             child: new ListTile(
                title: Container(
                  
                  height:40 ,
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Row(
                    
                      children:<Widget>[
                      Icon(Icons.group),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Groups',style: TextStyle(fontSize: 16),),
                    ),],
                    ),
                    Icon(Icons.arrow_right)
                  ],),
                ),
                
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ChatRoom()) );
                }
              ),
           ),

           Padding(
             
             padding: const EdgeInsets.all(2),
             child: new ListTile(
                title: Container(
                  
                  height:40 ,
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Row(
                    
                      children:<Widget>[
                      Icon(Icons.event),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Events',style: TextStyle(fontSize: 16),),
                    ),],
                    ),
                    Icon(Icons.arrow_right)
                  ],),
                ),
                
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Events()) );
                }
              ),
           ),
        ],
      ),
    );
  }
  }
     




