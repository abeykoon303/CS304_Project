import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/views/add_event_page.dart';
import 'package:flutterapp/views/add_task_page.dart';
import 'package:flutterapp/views/eventpage.dart';
import 'package:flutterapp/views/taskpage.dart';
import 'package:flutterapp/widget/custom_button.dart';
import 'package:flutterapp/widget/widget.dart';

class Events extends StatefulWidget{

  @override 
  _EventsState createState()=>_EventsState();
}

class _EventsState extends State<Events>{
  PageController _pageController=PageController();

  double currentPage=0;
  @override 
  Widget build(BuildContext context){
      _pageController.addListener((){
        setState(() {
          currentPage=_pageController.page;
        });
      });

    return Scaffold(
      appBar: appBarMain(context),
      drawer: Homescreen(),
      body: Stack(children: <Widget>[
        Container(
          height: 10,
          color:Colors.grey,
        ),
        Positioned(
          right: 0,
          child: Text('6',
          style:TextStyle(fontSize:200,color:Color(0x10000000))
          ),
        ),
        _mainContent(context),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showDialog(
            barrierDismissible: false,
            context:context,
            builder:(BuildContext context){
              return Dialog(
                child: currentPage==0 ? AddTaskPage() : AddEventPage (),
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.all(Radius.circular(12))
                ) ,
                );
            }
            );
        },
        child:Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape:CircularNotchedRectangle() ,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: (){},
                ),

                IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
                )
            ],
          ),
        ),
    );
  }

  Widget _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children:<Widget>[
        
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text('Monday',style: TextStyle(fontSize: 32,fontWeight:FontWeight.bold ),
      ),
        ),
      Padding(
        padding: const EdgeInsets.all(24.0),
        child: _button(context),
      ),
      Expanded(child: PageView(
        controller: _pageController,
        children: <Widget>[
        TaskPage(),
        EventPage()
      ],))
      
      ],
      );
  }

  

  Widget _button(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
                        child:CustomButton(
                          onPressed:(){
                            _pageController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
                          },
                          buttonText: 'Tasks',
                          color: currentPage < 0.5 ?Theme.of(context).accentColor :Colors.white,
                          textColor:currentPage <0.5 ? Colors.white :Theme.of(context).accentColor, borderColor:Theme.of(context).accentColor,
                        )
          ),
          SizedBox(
            width:32,
            ),
          Expanded(
              child: CustomButton(
                onPressed:(){
                  _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
                },
                buttonText:'Events' ,
                color: currentPage > 0.5 ?Theme.of(context).accentColor :Colors.white,
                          textColor:currentPage >0.5 ? Colors.white :Theme.of(context).accentColor, borderColor:Theme.of(context).accentColor,
                ))
              
          
          
        ],
      );
  }
}