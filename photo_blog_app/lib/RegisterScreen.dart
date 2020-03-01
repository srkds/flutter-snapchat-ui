import 'package:flutter/material.dart';
import 'package:photo_blog_app/setup/name_setup_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                          "Register",
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
                          labelText: "email",
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

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Color(0xFFDB4E4C),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "rePassword",
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
                        child: Text("Register", style: TextStyle(fontSize: 20),),
                        color: Color(0xFFDB4E4c),
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NameSetupScreen()));
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
                        child: Text("Already Have an Account?", style: TextStyle(fontSize: 20),),
                        color: Colors.white,
                        textColor: Color(0xFFDB4E4c),
                        onPressed: (){
                          Navigator.pop(context);
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
