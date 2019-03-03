import 'package:flutter/material.dart';
import 'package:show_dialog/show_dialog.dart' as dialog;

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget> [
          Container(
            child: RaisedButton(
              child: Text("About Dialog"),
              onPressed: (){
                dialog.showAboutDialog(context, "title", "content");
              }
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text("Loading Dialog"),
              onPressed: (){
                dialog.showLoadingDialog(context, 3);
              }
            ),
          ),
        ]
      ),
    );
  }
}