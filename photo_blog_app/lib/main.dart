import 'package:flutter/material.dart';
import 'package:photo_blog_app/RegisterScreen.dart';
import 'package:photo_blog_app/screens/main_screen.dart';

void main(){
  runApp(
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          // For background
          SizedBox(
            width: MediaQuery.of(context).size.width+4,
              child: Align(
                alignment: Alignment.topCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/shape1.png',fit: BoxFit.cover,)
                  )
              )
          ),

          // Main Form
          SingleChildScrollView(
            child: Container(
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    // logo
                    Container(
                      margin: EdgeInsets.only(bottom: 120),
                      child: Center(
                          child: Image.asset("assets/logo.png",height: 50,)
                      ),
                    ),

                    //Title
                    Container(
                      child: Center(
                        child: Text(
                          "PhotoPaad",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFFDB4E4C)
                          ),
                        ),
                      ),
                    ),

                    //Inputs
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        cursorColor: Color(0xFFDB4E4C),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "username",
                          fillColor: Color(0xFFDB4E4C),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Color(0xFFDB4E4C),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "password",
                          fillColor: Color(0xFFDB4E4C),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    //Buttons
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xFFDB4E4C))
                        ),
                        child: Text("Login", style: TextStyle(fontSize: 20),),
                        color: Color(0xFFDB4E4c),
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                        },
                      ),
                    ),

                    Text(
                      "Or",
                      style: TextStyle(color: Color(0xFFDB4E4c)),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        child: Text("New User?", style: TextStyle(fontSize: 20),),
                        color: Colors.white,
                        textColor: Color(0xFFDB4E4c),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                        },
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

