import 'package:SGIApp/widgets/widget.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: appBarMain(context),
          body: SingleChildScrollView(
            child:Container(
            height : MediaQuery.of(context).size.height -85,
            alignment: Alignment.bottomCenter,
            child : Container( 
            padding: EdgeInsets.symmetric(horizontal:24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children :[
                TextField(
                  style : simpleTextField(),
                  decoration: textToFileInputDecoration("email")
                ),
                TextField(
                  style: simpleTextField(),
                  decoration: textToFileInputDecoration("password")
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal:16,vertical:6),
                    child: Text("Forget Password?",style:simpleTextField()),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical:20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      const Color(0xff007EF4),
                      const Color(0xff2A75BC)
                    ]
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Sign In ",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    )
                  )
                ,),
                SizedBox(height: 9,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical:20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Sign In with Google",
                    style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    )
                  )
                ,),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account",style: TextStyle(color: Colors.white,fontSize: 15,),),
                    Text("Register now",style:TextStyle(color: Colors.white,fontSize: 15,decoration: TextDecoration.underline),)
                  ],
            ),
            SizedBox(height: 30,),
          ],
      ),
      ),
    ),
    )
    );
  }
}