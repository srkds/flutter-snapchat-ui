import 'package:flutter/material.dart';
import 'package:photo_blog_app/setup/gender_setup_screen.dart';

class NameSetupScreen extends StatefulWidget {
  @override
  _NameSetupScreenState createState() => _NameSetupScreenState();
}

class _NameSetupScreenState extends State<NameSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[

              Container(
                child: Center(
                  child: Text("Your Good Name",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFDB4E4c)
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Name",
                  ),
                  cursorColor: Color(0xFFDB4E4c),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                    child: Text("Next",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> GenderSetupScreen()));
                    },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFFDB4E4C))
                  ),
                  color: Color(0xFFDB4E4C),
                  textColor: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
