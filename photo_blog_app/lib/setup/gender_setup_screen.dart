import 'package:flutter/material.dart';
import 'package:photo_blog_app/setup/image_setup_screen.dart';

class GenderSetupScreen extends StatefulWidget {
  @override
  _GenderSetupScreenState createState() => _GenderSetupScreenState();
}

class _GenderSetupScreenState extends State<GenderSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageSetupScreen()));
                    },
                      child: Image.asset("assets/female.png")
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageSetupScreen()));
                    },
                      child: Image.asset("assets/male.png")
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
