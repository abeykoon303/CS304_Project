import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget{
  ProfilePage({Key key,}):super(key:key);

  @override 
  _ProfilePageState createState()=>_ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body:profileView()

    
    );
  }
 
Widget profileView(){
return Column(
  children: <Widget>[
    Padding(
      padding:EdgeInsets.fromLTRB(30, 50, 30, 30),

    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget>[
        Container(height:50,width:50,child:Icon(Icons.arrow_back,size:24,color:Colors.orange), decoration: BoxDecoration(border:Border.all(color:Colors.orange)),),
        Text('Profile Details', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.orange),),
        Container(height:24,width:24)
      ],
    ),
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: Stack(
        children:<Widget>[
          CircleAvatar(
            radius:70,
            child:ClipOval(child:Image.asset('assets/images/profile.png',height: 150,width: 150,) ,),
          ),
          Positioned(bottom:1,right:1,child:Container(
            height: 40,width: 40,
            child: Icon(Icons.add_a_photo,color: Colors.white,),
            decoration:BoxDecoration(
              color:Colors.orange,
              borderRadius:BorderRadius.circular(40)
            ) ,
          ))
        ]

      ),
    ),
    Expanded(child: Container(
      decoration:BoxDecoration(
        borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color.fromARGB(255, 245, 236, 0),Color.fromARGB(255, 243, 120, 10)]

        )
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding:const EdgeInsets.fromLTRB(20, 25, 20, 4),
          
        child:Container(
          height:60,
          child:Align(
            alignment:Alignment.centerLeft,
            child:Padding(
              padding:const EdgeInsets.all(8),
            child:Text('User Name',style:TextStyle(color:Colors.white),),
            ),
          ),
          decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),border: Border.all(width:1.0,color:Colors.white)),
        ),
          ),

          Padding(
            padding:const EdgeInsets.fromLTRB(20, 25, 20, 4),
          
        child:Container(
          height:60,
          child:Align(
            alignment:Alignment.centerLeft,
            child:Padding(
              padding:const EdgeInsets.all(8),
            child:Text('Name',style:TextStyle(color:Colors.white),),
            ),
          ),
          decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),border: Border.all(width:1.0,color:Colors.white)),
        ),
          ),

          Padding(
            padding:const EdgeInsets.fromLTRB(20, 25, 20, 4),
          
        child:Container(
          height:60,
          child:Align(
            alignment:Alignment.centerLeft,
            child:Padding(
              padding:const EdgeInsets.all(8),
            child:Text('email',style:TextStyle(color:Colors.white),),
            ),
          ),
          decoration: BoxDecoration(borderRadius:BorderRadius.all(Radius.circular(20)),border: Border.all(width:1.0,color:Colors.white)),
        ),
          ),
          SizedBox(height: 20,),
        Container(
          child:Align(child: Text('Save',style:TextStyle(color:Colors.white )),),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius:BorderRadius.only(topLeft: Radius.circular(30),
                      
          )),
        )

      ],
      ),
    ))
  ],
);
}
  
}