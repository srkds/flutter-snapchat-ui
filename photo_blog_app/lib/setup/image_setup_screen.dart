import 'package:flutter/material.dart';
import 'package:photo_blog_app/screens/main_screen.dart';

class ImageSetupScreen extends StatefulWidget {
  @override
  _ImageSetupScreenState createState() => _ImageSetupScreenState();
}

class _ImageSetupScreenState extends State<ImageSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[

              SafeArea(
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.network("https://images.pexels.com/photos/1193942/pexels-photo-1193942.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",height: 250,fit: BoxFit.cover,),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 120,
                              width: 120,
                              color: Color(0xFFDB4E4C),
                              child: Icon(Icons.camera,color: Colors.white,size: 45,),
                            ),
                          )
                      ),


                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 120,
                              width: 120,
                              color: Color(0xFFDB4E4C),
                              child: Icon(Icons.photo_library,color: Colors.white,size: 45,),
                            ),
                          )
                      ),

                    ],
                  ),
                ),
              ),


              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("Finish",style: TextStyle(fontSize: 20),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
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
