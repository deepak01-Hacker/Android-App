import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    title: Image.asset("assests/images/logo.png",height: 40,),

  );
}

InputDecoration textToFileInputDecoration(String hinttext){
  return InputDecoration
  (hintText: hinttext,
      hintStyle: TextStyle(
          color: Colors.white54,
          ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
         ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
);
}

TextStyle simpleTextField(){
  return
    TextStyle(
      color: Colors.white,
      fontSize: 16,
  );
}