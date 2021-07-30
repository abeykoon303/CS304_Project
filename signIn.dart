import 'package:flutter/material.dart';
import 'package:flutterapp/widget/widget.dart';

class SignIn extends StatefulWidget{

  final Function toggle;
  SignIn(this.toggle);

@override 
_SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
      child:Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "email",
                hintStyle: TextStyle(
                  color: Colors.white54
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                )

              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.white54
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color:Colors.white)
                ) 
              ),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.centerRight ,
              padding: EdgeInsets.symmetric(horizontal:16,vertical:8),
              child: Text("Forgot Password ?",style: TextStyle(color: Colors.white ,fontSize: 18),),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical:20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    const Color.fromARGB(255,106,54,7) ,
                    const Color.fromARGB(255,243,120,10)


                  ]
                  ),
                  borderRadius: BorderRadius.circular(30)

              ),
              child: Text("Sign In" , style: TextStyle(color: Colors.white,fontSize:16),),


            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical:20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    const Color.fromARGB(255,255,255,255) ,
                    const Color.fromARGB(255,255,255,255)


                  ]
                  ),
                  borderRadius: BorderRadius.circular(30)

              ),
              child: Text("Sign in with Google" , style: TextStyle(color: Colors.black,fontSize:16),),


            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Don't have account ?", style:TextStyle(color: Colors.white),),
                GestureDetector(
                    onTap: (){
                      widget.toggle();
                    },

                    child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8) ,
                    child: Text("Register Now",style: TextStyle(
                      color: Colors.orange, 
                      fontSize: 17,
                      decoration: TextDecoration.underline
                       ),),
                       ),
                )
              ],
            ),
            SizedBox(height: 50,)


            
          ],
        ),
      ),
    )
    );
  }
}