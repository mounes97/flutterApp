import 'package:flutter/material.dart';
import 'language.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}
class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, goToLanguage);
  }
   void goToLanguage()
  {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return language();
    }));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[Icon(Icons.android,size: 300,color: Colors.green,)
            ,SpinKitCircle(color: Colors.white,size: 100.0,),]
        ),
      ),
    );
  }
}
