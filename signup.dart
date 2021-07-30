import 'package:flutter/material.dart';
import 'package:flutterapp/services/auth.dart';
import 'package:flutterapp/views/chatroomscreen.dart';
import 'package:flutterapp/views/signIn.dart';
import 'package:flutterapp/widget/widget.dart';

class SignUp extends StatefulWidget{

  final Function toggle;
  SignUp(this.toggle);

  @override 
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{

  bool isLoading=false;

  AuthMethods authMethods =new AuthMethods();

  final formKey=GlobalKey<FormState>();
  TextEditingController userNameTextEditingController=new TextEditingController();
  TextEditingController emailTextEditingController=new TextEditingController();
  TextEditingController passwordTextEditingController=new TextEditingController();

  signMeUp(){
    if(formKey.currentState.validate()){
      setState(() {
        isLoading=true;
      });

     authMethods.signUpwithEmailAndPassword(emailTextEditingController.text, 
     passwordTextEditingController.text).then((val){
       print("${val.uid}");

       Navigator.pushReplacement(context, MaterialPageRoute(
         builder: (context) => ChatRoom()
       ));

     });

    }
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading ? Container(
        child:Center(child: CircularProgressIndicator()) ,
      ) : SingleChildScrollView(
      child:Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              key: formKey,
              child:

             Column(
               children: [
                 TextFormField(
                   validator:(val){
                     return val.isEmpty || val.length <4 ? "Please provide a valid UserName" : null;
                   } ,
                   controller: userNameTextEditingController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "username",
                    hintStyle: TextStyle(
                      color: Colors.white54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )

                  ),
            ),
            TextFormField(
              validator: (val){
                return RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                ) 
                .hasMatch(val) ? null: "Please Provide a valid emailID";
              },
                  controller: emailTextEditingController,
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
            TextFormField(
              validator:(val){
                return val.length > 6 ? null: "Please provide password 6+ characters ";
              } ,
                  controller: passwordTextEditingController,
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
               ],
             ),

            ),

            SizedBox(height: 8,),
    
              
              
            
               Container(
                alignment: Alignment.centerRight ,
                padding: EdgeInsets.symmetric(horizontal:16,vertical:8),
                child: Text("Forgot Password ?",style: TextStyle(color: Colors.white ,fontSize: 18),),
              ),
            
            SizedBox(height: 8,),

            GestureDetector(
              onTap:(){
                signMeUp();
              } ,
                          child: Container(
                
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
                Text("Already have an account ?", style:TextStyle(color: Colors.white),),
                GestureDetector(
                  onTap: (){
                    widget.toggle();
                  },
                                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text("SignIn Now",style: TextStyle(
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