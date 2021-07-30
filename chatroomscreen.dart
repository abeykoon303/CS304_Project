import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/helper/authenticate.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/services/auth.dart';
import 'package:flutterapp/views/search.dart';
import 'package:flutterapp/views/signIn.dart';
import 'package:flutterapp/widget/widget.dart';

class ChatRoom extends StatefulWidget{
  @override 
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthMethods authMethods=new  AuthMethods();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
    drawer: Homescreen(),
      appBar: AppBar(
        title:Image.asset("assets/images/name.png",
        height: 150,),
      actions: [
        GestureDetector(
            onTap:(){
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context)=> Authenticate()
              ));
            },
            child:Container(
          padding: EdgeInsets.symmetric(horizontal:16),
          child: Icon(Icons.exit_to_app)
        ),
        )
      
        
      ],
      

  
      ),

    

      floatingActionButton: FloatingActionButton( 
        child:Icon(Icons.search) ,
        onPressed: (){
          Navigator.push(context , MaterialPageRoute(
            builder: (context) => SearchSreen()
          ));

        },
      ),

    );
  }
}