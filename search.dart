import 'package:flutter/material.dart';
import 'package:flutterapp/widget/widget.dart';


class SearchSreen extends StatefulWidget{

  @override 
  _SearchSreenState createState()=> _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen>{

  TextEditingController searchtextEditingController=new TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        child:Column(
          children: [
            Container(
              color: Color.fromARGB(255, 252, 171, 98),
              padding: EdgeInsets.symmetric(horizontal:24,vertical:16),
              child: Row(
                children:[
                  Expanded(
                    child: TextField(
                      controller: searchtextEditingController,
                      style: TextStyle(color: Color.fromARGB(255, 80, 41, 6)),
              decoration: InputDecoration(
                hintText: "Search Username",
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 80, 41, 6)
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                )

              ),
                    )
                    ),
                  Container(
                    height:40 ,
                    width:40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 255, 255, 255),
                          const Color.fromARGB(255, 255, 255, 255)
                        ]
                      ),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Image.asset("assets/images/searchlogo3~3.png"))
                ],
              ),
            )
          ],
        ),
        ),
    );
  }
}

class SearchTile extends StatelessWidget{
  final String userName;
  final String userEmail;
  SearchTile({this.userName,this.userEmail});

  @override 
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children:[
          Column(
            children: [
              Text(userName, ),
              Text(userEmail,)
            ],
          ),

          Spacer(),
          Container(
            decoration: BoxDecoration( 
              color: Colors.orange,
              borderRadius: BorderRadius.circular(13)

            ),
            padding:EdgeInsets.symmetric(horizontal:16,vertical:8),
            child:Text("Message"),
          )

        ],
      ),
    );
  }
}