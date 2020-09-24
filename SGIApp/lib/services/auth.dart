import 'package:firebase_auth/firebase_auth.dart';
import 'package:SGIApp/model/user.dart';
import 'dart:async';

class AuthMethods{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(userId : user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email,String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    }
    catch(e){
      print(e);
    }

  }
  Future signUpwithEmailAndPassword(String email , String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    }
    catch(e){
      print(e.toString());
    }
  }
  Future resetPass(String email){
    try{
      return _auth.sendPasswordResetEmail(email:email);
    }
    catch(e){
      print(e.toString());
    }
  }
  Future signOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
    }
  }
}