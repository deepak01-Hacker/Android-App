import 'package:flutter/material.dart';
import 'package:SGIApp/widgets/widget.dart';


class SignuP extends StatefulWidget {
  @override
  _SignuPState createState() => _SignuPState();
}

class _SignuPState extends State<SignuP> {
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();

  signMeUP(){
    if (formKey.currentState.validate()){

    }
  }

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
                Form(
                  key: formKey,
                child:Column(
                  children: [
                TextFormField(
                  validator: (val){
                      return val.isEmpty || val.length > 4 ?;
                    },
                  controller: userNameTextEditingController,
                  style : simpleTextField(),
                  decoration: textToFileInputDecoration("username")
                ),
                TextFormField(
                  controller: emailTextEditingController,
                  style : simpleTextField(),
                  decoration: textToFileInputDecoration("email")
                ),
                TextFormField(
                  controller: passwordTextEditingController,
                  style: simpleTextField(),
                  decoration: textToFileInputDecoration("password")
                ),
              
                ]
                )
                ,),
                SizedBox(height: 40,),
                GestureDetector(
                    onTap: (){
                      signMeUP();
                    },
                    child: Container(
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
                    child: Text("Sign up ",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      )
                    )
                  ,),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical:20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("Sign up with Google",
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
                    Text("have an account",style: TextStyle(color: Colors.white,fontSize: 15,),),
                    Text("Sign In now",style:TextStyle(color: Colors.white,fontSize: 15,decoration: TextDecoration.underline),)
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